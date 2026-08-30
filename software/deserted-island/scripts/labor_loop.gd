extends Node3D
class_name IslandLaborLoop

const INTERACT_DISTANCE := 2.4
const SLEEP_DISTANCE := 3.2
const MAX_FATIGUE := 100.0
const MIN_SLEEP_FATIGUE := 10.0

var player: IslandPlayerController
var base_walk_speed := 5.0
var base_sprint_speed := 8.0
var fatigue := 0.0
var pending_collection_xp := 0.0
var committed_collection_xp := 0
var carried_kind := ""
var deposited := {"wood": 0, "night_resin": 0}
var sources: Array[Dictionary] = []
var carried_mesh: MeshInstance3D
var cache_position := Vector3(3.0, 0.55, 8.0)
var shelter_position := Vector3(-3.0, 0.35, 8.0)
var status_text := "Gather during daylight. Resin can only be found at night."
var readout: Label


func configure(controller: IslandPlayerController) -> void:
	player = controller
	base_walk_speed = controller.walk_speed
	base_sprint_speed = controller.sprint_speed


func _ready() -> void:
	_build_cache()
	_build_shelter()
	_spawn_sources()
	_build_readout()


func _process(delta: float) -> void:
	if not player:
		return
	var moving := player.horizontal_speed() > 0.15
	if moving:
		var effort := 0.75
		if Input.is_action_pressed("sprint"):
			effort += 1.2
		if not carried_kind.is_empty():
			effort += 0.8
		if _is_night():
			effort *= 1.45
		fatigue = minf(MAX_FATIGUE, fatigue + effort * delta)
	else:
		fatigue = maxf(0.0, fatigue - 0.10 * delta)
	_update_source_visibility()
	_update_movement_cost()
	_update_readout()


func _unhandled_input(event: InputEvent) -> void:
	if not player or not (event is InputEventKey) or not event.pressed or event.echo:
		return
	if event.physical_keycode == KEY_F:
		_try_interact()
		get_viewport().set_input_as_handled()
	elif event.physical_keycode == KEY_R:
		_try_sleep()
		get_viewport().set_input_as_handled()


func _try_interact() -> void:
	if not carried_kind.is_empty():
		if player.global_position.distance_to(cache_position) <= INTERACT_DISTANCE:
			_deposit_carried_resource()
		else:
			status_text = "Carry the %s to the beach cache." % carried_kind.replace("_", " ")
		return
	var nearest: Dictionary = {}
	var nearest_distance := INTERACT_DISTANCE
	for source in sources:
		if source["collected"] or (source["night_only"] and not _is_night()):
			continue
		var distance := player.global_position.distance_to(source["position"])
		if distance <= nearest_distance:
			nearest = source
			nearest_distance = distance
	if nearest.is_empty():
		status_text = "Nothing within reach. Resources occupy physical locations."
		return
	nearest["collected"] = true
	nearest["node"].visible = false
	carried_kind = nearest["kind"]
	fatigue = minf(MAX_FATIGUE, fatigue + 2.0)
	pending_collection_xp += 2.0 if carried_kind == "wood" else 4.0
	_show_carried_resource(carried_kind)
	status_text = "Carrying %s — return it to the beach cache." % carried_kind.replace("_", " ")


func _deposit_carried_resource() -> void:
	deposited[carried_kind] += 1
	pending_collection_xp += 4.0 if carried_kind == "wood" else 7.0
	status_text = "Deposited %s. Evidence remains pending until sleep." % carried_kind.replace("_", " ")
	carried_kind = ""
	if carried_mesh:
		carried_mesh.queue_free()
		carried_mesh = null


func _try_sleep() -> void:
	if player.global_position.distance_to(shelter_position) > SLEEP_DISTANCE:
		status_text = "Sleep requires returning to the beach shelter."
		return
	if not carried_kind.is_empty():
		status_text = "Deposit or abandon the carried resource before sleeping."
		return
	if fatigue < MIN_SLEEP_FATIGUE and pending_collection_xp <= 0.0:
		status_text = "No meaningful labor or fatigue to consolidate."
		return
	var committed_now := int(floor(pending_collection_xp))
	committed_collection_xp += committed_now
	pending_collection_xp = 0.0
	fatigue = maxf(0.0, fatigue - 75.0)
	get_parent().advance_to_morning()
	status_text = "Slept. Committed %d collection XP; the world advanced." % committed_now


func _update_movement_cost() -> void:
	var fatigue_factor := lerpf(1.0, 0.58, fatigue / MAX_FATIGUE)
	var carry_factor := 0.78 if not carried_kind.is_empty() else 1.0
	player.walk_speed = base_walk_speed * fatigue_factor * carry_factor
	player.sprint_speed = base_sprint_speed * fatigue_factor * carry_factor


func _is_night() -> bool:
	return get_parent().is_night()


func _spawn_sources() -> void:
	_add_source("wood", Vector3(7.0, 0.65, 3.0), false)
	_add_source("wood", Vector3(-5.0, 0.7, 4.0), false)
	_add_source("wood", Vector3(-12.0, 1.55, 10.0), false)
	_add_source("wood", Vector3(13.0, 1.4, -2.0), false)
	_add_source("night_resin", Vector3(-3.0, 0.55, 14.0), true)
	_add_source("night_resin", Vector3(-8.0, 0.75, 16.0), true)


func _add_source(kind: String, position_value: Vector3, night_only: bool) -> void:
	var visual := MeshInstance3D.new()
	visual.name = "%sSource" % kind.to_pascal_case()
	visual.position = position_value
	visual.rotation_degrees.z = 90.0
	var mesh := CylinderMesh.new()
	mesh.top_radius = 0.22
	mesh.bottom_radius = 0.28
	mesh.height = 1.35
	var material := StandardMaterial3D.new()
	material.albedo_color = Color("765033") if kind == "wood" else Color("81659b")
	material.roughness = 0.92
	mesh.material = material
	visual.mesh = mesh
	add_child(visual)
	sources.append({"kind": kind, "position": position_value, "night_only": night_only, "collected": false, "node": visual})


func _update_source_visibility() -> void:
	for source in sources:
		if source["collected"]:
			continue
		source["node"].visible = not source["night_only"] or _is_night()


func _show_carried_resource(kind: String) -> void:
	carried_mesh = MeshInstance3D.new()
	carried_mesh.position = Vector3(0.0, 1.15, -0.72)
	carried_mesh.rotation_degrees.z = 90.0
	var mesh := CylinderMesh.new()
	mesh.top_radius = 0.18
	mesh.bottom_radius = 0.21
	mesh.height = 1.0
	var material := StandardMaterial3D.new()
	material.albedo_color = Color("765033") if kind == "wood" else Color("81659b")
	mesh.material = material
	carried_mesh.mesh = mesh
	player.add_child(carried_mesh)


func _build_cache() -> void:
	var cache := MeshInstance3D.new()
	cache.name = "BeachCache"
	cache.position = cache_position
	var mesh := BoxMesh.new()
	mesh.size = Vector3(1.8, 0.7, 1.4)
	var material := StandardMaterial3D.new()
	material.albedo_color = Color("59422f")
	mesh.material = material
	cache.mesh = mesh
	add_child(cache)
	_add_world_label("CACHE [F]", cache_position + Vector3.UP * 1.1, Color("ffd28a"))


func _build_shelter() -> void:
	var shelter := MeshInstance3D.new()
	shelter.name = "BeachShelter"
	shelter.position = shelter_position
	var mesh := BoxMesh.new()
	mesh.size = Vector3(2.4, 0.25, 1.2)
	var material := StandardMaterial3D.new()
	material.albedo_color = Color("52614a")
	mesh.material = material
	shelter.mesh = mesh
	add_child(shelter)
	_add_world_label("SHELTER [R]", shelter_position + Vector3.UP * 0.8, Color("b9e6b0"))


func _add_world_label(text_value: String, position_value: Vector3, color: Color) -> void:
	var label := Label3D.new()
	label.text = text_value
	label.position = position_value
	label.modulate = color
	label.outline_size = 6
	label.billboard = BaseMaterial3D.BILLBOARD_ENABLED
	label.no_depth_test = true
	add_child(label)


func _build_readout() -> void:
	var layer := CanvasLayer.new()
	add_child(layer)
	readout = Label.new()
	readout.position = Vector2(18, 185)
	readout.add_theme_font_size_override("font_size", 16)
	layer.add_child(readout)


func _update_readout() -> void:
	var phase := "NIGHT — labor costs more" if _is_night() else "DAY — prepare and gather"
	readout.text = (
		"LABOR  %s\nFATIGUE %.1f/100   CARRY %s\nCACHE wood=%d resin=%d\nCOLLECTION XP pending=%.1f committed=%d\n[F] gather/deposit   [R] sleep at shelter\n%s"
		% [phase, fatigue, carried_kind if not carried_kind.is_empty() else "empty", deposited["wood"], deposited["night_resin"], pending_collection_xp, committed_collection_xp, status_text]
	)
