class_name Goal
extends Node

@export var curve : Curve = load("res://addons/goap/curves/linear_curve.tres")

func get_incentive(_blackboard: Dictionary) -> float:
	push_error("get_incentive must be implemented")
	return 0.0
