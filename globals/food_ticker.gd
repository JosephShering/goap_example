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
	pass
