extends Node2D

var p1namelabel 
var p2namelabel
onready var Player_vars = get_node("/root/GlobalVaribles")

# Called when the node enters the scene tree for the first time.
func _ready():
	p2namelabel = get_node("Panel/Label2")
	p2namelabel.text = String('test')
	p1namelabel = get_node("Panel/Label")

	print Player_vars.p1name
