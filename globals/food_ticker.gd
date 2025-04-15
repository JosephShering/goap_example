extends Node

signal tick

var tick_rate := 2.0
var timer : Timer

func _ready() -> void:
	timer = Timer.new()
	timer.wait_time = tick_rate
	timer.one_shot = false
	timer.autostart = true
	timer.timeout.connect(_on_tick)
	
	add_child(timer)
	
func _on_tick() -> void:
	var cities := get_tree().get_nodes_in_group(&"cities")
	
	for city: City in cities:
		city.food -= city.food_eaten_per_tick
		
	
	tick.emit()
