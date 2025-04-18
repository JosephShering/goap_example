class_name GoalAction
extends Resource

func tick(actor: Node, blackboard: Dictionary) -> void:
	push_error("cost must be implemented for your goal action")
	
	
func cost() -> int:
	push_error("cost must be implemented for your goal action")
	return 0
