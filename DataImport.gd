extends Node

var enemy_data

func _ready():
	var enemy_data_file = File.new()
	enemy_data_file.open('res://Enemies - Sheet1.json', File.READ)
	var enemy_data_json = JSON.parse(enemy_data_file.get_as_text())
	enemy_data_file.close()
	enemy_data = enemy_data_json.result

