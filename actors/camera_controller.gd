class_name CameraController
extends Node

var move_dir := Vector2.ZERO

@export var camera_speed := 250.0
@export var camera : PhantomCamera2D

func _process(delta: float) -> void:
	move_dir = Input.get_vector(&"move_left", &"move_right", &"move_forward", &"move_backward")
	
	var target_velocity := move_dir * blend(camera_speed, delta)
	camera.position += target_velocity
	
	
func blend(speed: float, delta: float) -> float:
	return 1 - pow(0.5, delta * speed)
