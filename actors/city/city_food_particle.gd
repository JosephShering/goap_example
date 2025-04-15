extends GPUParticles2D

@export var city : City

func _ready() -> void:
	lifetime = FoodTicker.tick_rate
	
	FoodTicker.tick.connect(func():
			emitting = true
			restart(true)
	)
