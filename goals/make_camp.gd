class_name RestInCampsite
extends Goal

func get_incentive(blackboard: Dictionary) -> float:
	var stamina : float = blackboard["stamina"]
	var max_stamina : float = blackboard["max_stamina"]
	var idx : float = 1.0 - (stamina / max_stamina)
	return curve.sample(idx)
