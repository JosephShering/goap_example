@tool
class_name Brain
extends Node

signal goal_changed

@export var actor : Node
@export var blackboard : Dictionary
@export var planner : ActionPlanner

var active_goal : Goal

func _enter_tree() -> void:
	actor = get_parent()


func _process(delta: float):
	if not Engine.is_editor_hint():
		var new_active_goal = get_goal()
		
		if active_goal != null and active_goal.name != new_active_goal.name:
			goal_changed.emit()
			
		active_goal = new_active_goal


func get_goal() -> Goal:
	var highest_incentive := 0.0
	var chosen_goal : Goal
	
	for goal: Goal in get_children():
		var inc := goal.get_incentive(blackboard)
		
		if inc > highest_incentive:
			chosen_goal = goal
			highest_incentive = inc
	
	
	return chosen_goal
