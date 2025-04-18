class_name City
extends Node2D

@export var city_config : CityConfig
@onready var city_tile: Sprite2D = %CitySprite

@onready var list: VBoxContainer = %List
@onready var city_name: Label = %CityName


var refs := {}

func _ready() -> void:
	city_name.text = city_config.name
	for item in city_config.stock:
		var label := Label.new()
		label.text = "%s x %d" % [item.trade_good.name, item.volume]
		
		var row := HBoxContainer.new()
		row.add_child(label)
		
		refs[item.trade_good.name] = label
		
		list.add_child(row)

func _process(_delta: float) -> void:
	for item in city_config.stock:
		refs[item.trade_good.name] = "%s x %d" % [item.trade_good.name, item.volume]
