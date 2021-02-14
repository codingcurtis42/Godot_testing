extends Node2D

var p1namelabel 
var p2namelabel

func _ready():
	p2namelabel = get_node("Panel/Label2")
	p2namelabel.text = String('test')
	p1namelabel = get_node("Panel/Label")

	var Player_vars = get_node("/root/GlobalVaribles")
	p1namelabel.text = String(Player_vars.p1name)
	
