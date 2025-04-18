class_name CityConfig
extends Resource

@export var name : String
@export var color : Color = Color.WHITE

@export_category("Market")
@export var stock : Array[TradeGoodStock]
