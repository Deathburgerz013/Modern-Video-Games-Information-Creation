extends Node3D

const BUILD_ID := "deserted-island-placement-v0.4.2"
const DAY_LENGTH_SECONDS := 180.0
const FALL_RECOVERY_Y := -20.0
const ENVIRONMENT_LAYOUT := preload("res://scripts/environment_layout.gd")
const LABOR_LOOP := preload("res://scripts/labor_loop.gd")

@onready var player: IslandPlayerController = $Player
@onready var sun: DirectionalLight3D = $Sun
@onready var world_environment: WorldEnvironment = $WorldEnvironment
@onready var build_label: Label = $HUD/Margin/Readout/Build
@onready var time_label: Label = $HUD/Margin/Readout/Time
@onready var position_label: Label = $HUD/Margin/Readout/Position
@onready var movement_label: Label = $HUD/Margin/Readout/Movement
@onready var boundary_label: Label = $HUD/Margin/Readout/Boundary

var time_of_day_hours: float = 8.0
var day_index := 1
var shell_spawn_transform: Transform3D
var fall_recovery_count: int = 0


func _ready() -> void:
	var environment_layout := ENVIRONMENT_LAYOUT.new()
	environment_layout.name = "EnvironmentLayout"
	add_child(environment_layout)
	var labor_loop := LABOR_LOOP.new()
	labor_loop.name = "LaborLoop"
	labor_loop.configure(player)
	add_child(labor_loop)
	shell_spawn_transform = player.global_transform
	build_label.text = "BUILD  %s" % BUILD_ID
	boundary_label.text = "BOUNDARY  one labor/sleep circuit — no broad survival claim"


func _process(delta: float) -> void:
	time_of_day_hours = fmod(time_of_day_hours + (24.0 * delta / DAY_LENGTH_SECONDS), 24.0)
	_update_sun()
	_update_diagnostics()


func _physics_process(_delta: float) -> void:
	if player.global_position.y < FALL_RECOVERY_Y:
		_recover_from_invalid_fall()


func _recover_from_invalid_fall() -> void:
	fall_recovery_count += 1
	player.velocity = Vector3.ZERO
	player.global_transform = shell_spawn_transform
	boundary_label.text = "RECOVERY  invalid fall restored to safe environment spawn  count=%d" % fall_recovery_count


func is_night() -> bool:
	return time_of_day_hours >= 20.0 or time_of_day_hours < 5.0


func advance_to_morning() -> void:
	day_index += 1
	time_of_day_hours = 6.0


func _update_sun() -> void:
	var solar_angle := (time_of_day_hours / 24.0) * TAU - (PI * 0.5)
	sun.rotation.x = solar_angle
	sun.rotation.y = deg_to_rad(-35.0)
	var daylight := clampf(sin(solar_angle) * 0.5 + 0.5, 0.03, 1.0)
	sun.light_energy = lerpf(0.08, 1.15, daylight)
	sun.light_color = Color(1.0, lerpf(0.58, 0.97, daylight), lerpf(0.42, 0.90, daylight))
	if world_environment.environment:
		world_environment.environment.ambient_light_energy = lerpf(0.08, 0.55, daylight)


func _update_diagnostics() -> void:
	var hour := int(time_of_day_hours)
	var minute := int((time_of_day_hours - float(hour)) * 60.0)
	time_label.text = "TIME   Day %d  %02d:%02d" % [day_index, hour, minute]
	position_label.text = "POS    %.2f, %.2f, %.2f" % [player.global_position.x, player.global_position.y, player.global_position.z]
	movement_label.text = "MOVE   %.2f m/s  floor=%s" % [player.horizontal_speed(), str(player.is_on_floor())]
