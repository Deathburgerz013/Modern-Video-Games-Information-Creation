extends Node3D
class_name IslandEnvironmentLayout

const GRID_STEP := 1.35
const REGION_LABEL_HEIGHT := 1.4

var terrain_material: StandardMaterial3D


func _ready() -> void:
	_remove_shell_blocks()
	_create_material()
	_build_land_surfaces()
	_build_landmarks()


func _remove_shell_blocks() -> void:
	for node_name in ["Island", "InlandRock", "ReefRock"]:
		var old_node := get_parent().get_node_or_null(node_name)
		if old_node:
			old_node.queue_free()


func _create_material() -> void:
	terrain_material = StandardMaterial3D.new()
	terrain_material.vertex_color_use_as_albedo = true
	terrain_material.roughness = 0.96
	terrain_material.cull_mode = BaseMaterial3D.CULL_DISABLED


func _build_land_surfaces() -> void:
	_build_surface("MainIsland", [
		Vector2(-28, -19), Vector2(-17, -28), Vector2(-3, -29),
		Vector2(12, -23), Vector2(24, -12), Vector2(28, 1),
		Vector2(23, 13), Vector2(13, 20), Vector2(1, 23),
		Vector2(-12, 24), Vector2(-24, 15), Vector2(-31, 2),
	], "main")
	_build_surface("ChannelIsland", [
		Vector2(13, 25), Vector2(22, 23), Vector2(28, 30),
		Vector2(26, 41), Vector2(17, 45), Vector2(11, 36),
	], "channel")
	_build_surface("SouthShoal", [
		Vector2(-8, 35), Vector2(8, 35), Vector2(0, 43),
	], "shoal")
	_build_surface("WestIsletA", [
		Vector2(-40, -21), Vector2(-34, -23), Vector2(-31, -18),
		Vector2(-35, -14), Vector2(-41, -16),
	], "islet")
	_build_surface("WestIsletB", [
		Vector2(-42, 1), Vector2(-37, 0), Vector2(-34, 5),
		Vector2(-38, 9), Vector2(-43, 7),
	], "islet")


func _build_surface(node_name: String, polygon: Array, kind: String) -> void:
	var bounds := _polygon_bounds(polygon)
	var surface_tool := SurfaceTool.new()
	surface_tool.begin(Mesh.PRIMITIVE_TRIANGLES)
	surface_tool.set_material(terrain_material)

	var x := bounds.position.x
	while x < bounds.end.x:
		var z := bounds.position.y
		while z < bounds.end.y:
			var center := Vector2(x + GRID_STEP * 0.5, z + GRID_STEP * 0.5)
			if _point_in_polygon(center, polygon):
				var a := Vector2(x, z)
				var b := Vector2(x + GRID_STEP, z)
				var c := Vector2(x + GRID_STEP, z + GRID_STEP)
				var d := Vector2(x, z + GRID_STEP)
				_add_triangle(surface_tool, a, b, c, kind)
				_add_triangle(surface_tool, a, c, d, kind)
			z += GRID_STEP
		x += GRID_STEP

	surface_tool.index()
	surface_tool.generate_normals()
	var mesh := surface_tool.commit()
	if not mesh:
		return

	var body := StaticBody3D.new()
	body.name = node_name
	add_child(body)
	var mesh_instance := MeshInstance3D.new()
	mesh_instance.mesh = mesh
	body.add_child(mesh_instance)
	var collision := CollisionShape3D.new()
	collision.shape = mesh.create_trimesh_shape()
	body.add_child(collision)


func _add_triangle(surface_tool: SurfaceTool, a: Vector2, b: Vector2, c: Vector2, kind: String) -> void:
	for point in [a, b, c]:
		var height := _height_at(point, kind)
		surface_tool.set_color(_color_at(point, height, kind))
		surface_tool.add_vertex(Vector3(point.x, height, point.y))


func _height_at(point: Vector2, kind: String) -> float:
	if kind == "main":
		var western_spine := 8.0 * _gaussian(point, Vector2(-20, -5), Vector2(7, 19))
		var north_peak := 5.5 * _gaussian(point, Vector2(-9, -21), Vector2(9, 8))
		var east_plateau := 3.1 * _gaussian(point, Vector2(11, -7), Vector2(12, 10))
		var basin := -0.65 * _gaussian(point, Vector2(-3, -5), Vector2(7, 7))
		var wetland := -0.28 * _gaussian(point, Vector2(-4, 14), Vector2(9, 7))
		return maxf(-0.12, 0.18 + western_spine + north_peak + east_plateau + basin + wetland)
	if kind == "channel":
		return 0.15 + 4.6 * _gaussian(point, Vector2(20, 33), Vector2(7, 10))
	if kind == "shoal":
		return -0.17 + 0.16 * _gaussian(point, Vector2(0, 39), Vector2(6, 4))
	return 0.0 + 2.7 * _gaussian(point, point, Vector2(5, 5))


func _gaussian(point: Vector2, center: Vector2, spread: Vector2) -> float:
	var dx := (point.x - center.x) / spread.x
	var dz := (point.y - center.y) / spread.y
	return exp(-(dx * dx + dz * dz))


func _color_at(point: Vector2, height: float, kind: String) -> Color:
	if kind == "shoal":
		return Color("d8c58a")
	if kind == "channel" or kind == "islet":
		return Color("36443a").lerp(Color("55534a"), clampf(height / 5.0, 0.0, 1.0))
	if point.x > 8.0 and point.y > 2.0:
		return Color("b99b68")
	if point.y > 9.0 and point.x < 5.0:
		return Color("24443a")
	if height > 4.0:
		return Color("454640")
	if height > 1.8:
		return Color("46543a")
	return Color("31472a")


func _polygon_bounds(polygon: Array) -> Rect2:
	var minimum: Vector2 = polygon[0]
	var maximum: Vector2 = polygon[0]
	for point: Vector2 in polygon:
		minimum.x = minf(minimum.x, point.x)
		minimum.y = minf(minimum.y, point.y)
		maximum.x = maxf(maximum.x, point.x)
		maximum.y = maxf(maximum.y, point.y)
	return Rect2(minimum, maximum - minimum)


func _point_in_polygon(point: Vector2, polygon: Array) -> bool:
	var inside := false
	var previous := polygon.size() - 1
	for current in range(polygon.size()):
		var a: Vector2 = polygon[current]
		var b: Vector2 = polygon[previous]
		if ((a.y > point.y) != (b.y > point.y)) and point.x < (b.x - a.x) * (point.y - a.y) / (b.y - a.y) + a.x:
			inside = not inside
		previous = current
	return inside


func _build_landmarks() -> void:
	_add_marker("EAST BEACH / INITIAL LABOR", Vector3(8, 1.1, 10), Color("ffe1a3"))
	_add_marker("FRESHWATER BASIN", Vector3(-3, 1.0, -5), Color("8ed8ff"))
	_add_marker("WETLAND / TIDE PRESSURE", Vector3(-4, 0.9, 14), Color("9bd6bd"))
	_add_marker("WESTERN SPINE / STORM WALL", Vector3(-20, 9.2, -5), Color("d5d4cf"))
	_add_marker("EAST PLATEAU / LONG SIGHTLINE", Vector3(11, 4.4, -7), Color("dbd9a0"))
	_add_marker("CHANNEL / EQUIPMENT GATE", Vector3(14, 1.2, 22), Color("ff9999"))
	_add_marker("SOUTH SHOAL / TIDE WINDOW", Vector3(0, 0.8, 39), Color("f3d889"))


func _add_marker(text_value: String, position_value: Vector3, color: Color) -> void:
	var label := Label3D.new()
	label.text = text_value
	label.position = position_value + Vector3.UP * REGION_LABEL_HEIGHT
	label.modulate = color
	label.font_size = 28
	label.outline_size = 8
	label.billboard = BaseMaterial3D.BILLBOARD_ENABLED
	label.no_depth_test = true
	add_child(label)
