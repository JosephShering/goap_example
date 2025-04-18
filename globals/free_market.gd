extends Node

var timer : Timer

func _ready() -> void:
	timer = Timer.new()
	timer.wait_time = 2.0
	timer.autostart = true
	timer.timeout.connect(_on_tick)
	
	add_child(timer)

func _on_tick():
	var cities := get_tree().get_nodes_in_group("cities")
	
	for city: City in cities:
		pass
