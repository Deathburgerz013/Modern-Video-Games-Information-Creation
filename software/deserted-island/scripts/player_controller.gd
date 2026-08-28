class_name IslandPlayerController
extends CharacterBody3D

@export var walk_speed: float = 5.0
@export var sprint_speed: float = 8.0
@export var acceleration: float = 22.0
@export var deceleration: float = 28.0
@export var mouse_sensitivity: float = 0.0025
@export var minimum_pitch_degrees: float = -70.0
@export var maximum_pitch_degrees: float = 55.0

@onready var camera_pivot: Node3D = $CameraPivot

var _gravity: float


func _ready() -> void:
	_gravity = float(ProjectSettings.get_setting("physics/3d/default_gravity", 18.0))
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("toggle_mouse"):
		Input.mouse_mode = (
			Input.MOUSE_MODE_VISIBLE
			if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED
			else Input.MOUSE_MODE_CAPTURED
		)
		get_viewport().set_input_as_handled()
		return

	if event is InputEventMouseMotion and Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
		rotate_y(-event.relative.x * mouse_sensitivity)
		camera_pivot.rotation.x = clampf(
			camera_pivot.rotation.x - event.relative.y * mouse_sensitivity,
			deg_to_rad(minimum_pitch_degrees),
			deg_to_rad(maximum_pitch_degrees)
		)


func _physics_process(delta: float) -> void:
	var input_vector := Input.get_vector(
		"move_left", "move_right", "move_forward", "move_back"
	)
	var local_direction := Vector3(input_vector.x, 0.0, input_vector.y)
	var world_direction := (global_transform.basis * local_direction).normalized()
	var target_speed := sprint_speed if Input.is_action_pressed("sprint") else walk_speed
	var target_velocity := world_direction * target_speed
	var rate := acceleration if world_direction != Vector3.ZERO else deceleration

	velocity.x = move_toward(velocity.x, target_velocity.x, rate * delta)
	velocity.z = move_toward(velocity.z, target_velocity.z, rate * delta)

	if not is_on_floor():
		velocity.y -= _gravity * delta
	else:
		velocity.y = minf(velocity.y, 0.0)

	move_and_slide()


func horizontal_speed() -> float:
	return Vector2(velocity.x, velocity.z).length()
