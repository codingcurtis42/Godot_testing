extends Node2D

var p1namelabel 
var p2namelabel
var p3namelabel
var p4namelabel

var Monster1
var monstername = 'Slime'

var monsterlabel1
var monsterlabel2
var monsterlabel3
var monsterlabel4

func _ready():
	var Player_vars = get_node("/root/GlobalVaribles")
	
	p1namelabel = get_node("PlayerPanel/p1name")
	p1namelabel.text = String(Player_vars.p1name)
	
	p2namelabel = get_node("PlayerPanel/p2name")
	p2namelabel.text = String(Player_vars.p2name)
	
	p3namelabel = get_node("PlayerPanel/p3name")
	p3namelabel.text = String(Player_vars.p3name)

	p4namelabel = get_node("PlayerPanel/p4name")
	p4namelabel.text = String(Player_vars.p4name)

	Monster1 = DataImport.enemy_data["Slime"]

	print(Monster1.Name)

	monsterlabel1 = get_node("EnemyPanel/Monster1")
	monsterlabel1.text = String(Monster1.Name)
















