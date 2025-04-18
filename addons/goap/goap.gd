@tool
extends EditorPlugin

func _enter_tree() -> void:
	add_custom_type(
		"Brain",
		"Brain",
		load("res://addons/goap/brain.gd"),
		load("res://addons/goap/icons/icon_brain.png")
	)
	
	add_custom_type(
		"Goal",
		"Goal",
		load("res://addons/goap/goal.gd"),
		load("res://addons/goap/icons/icon_goal.png")
	)
	
	add_custom_type(
		"GoalAction",
		"GoalAction",
		load("res://addons/goap/goal_action.gd"),
		load("res://addons/goap/icons/icon_goal_action.png")
	)

func _exit_tree() -> void:
	remove_custom_type("Brain")
	remove_custom_type("Goal")
	remove_custom_type("GoalAction")
