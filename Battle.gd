extends Node2D

var p1namelabel 
var p2namelabel
var p3namelabel
var p4namelabel

var monsterlabel1
var monsterlabel2
var monsterlabel3
var monsterlabel4
onready var Player_vars = get_node("/root/GlobalVaribles")
var Monster_Data
var selectable_monsters = {}


func _ready():
	#load_mobs()
	load_party()
	choose_mobs()
	


func load_party():
	p1namelabel = get_node("PlayerPanel/p1name")
	p1namelabel.text = String(Player_vars.p1name)
	$Player1.set_texture(load(Player_vars.p1sprite))
		
	p2namelabel = get_node("PlayerPanel/p2name")
	p2namelabel.text = String(Player_vars.p2name)
	$Player2.set_texture(load(Player_vars.p2sprite))
	
	p3namelabel = get_node("PlayerPanel/p3name")
	p3namelabel.text = String(Player_vars.p3name)
	$Player3.set_texture(load(Player_vars.p3sprite))

	p4namelabel = get_node("PlayerPanel/p4name")
	p4namelabel.text = String(Player_vars.p4name)
	$Player4.set_texture(load(Player_vars.p4sprite))


func load_mobs():
	monsterlabel1 = get_node("EnemyPanel/Monster1")
	monsterlabel1.text = String(Monster_Data.Name)	
	$Monster1.set_texture(load(Monster_Data.Art))


func choose_mobs():
	Monster_Data = DataImport.enemy_data
	var amount = randi() % 4 + 1
	var player_area = Player_vars.current_area
	
	for i in Monster_Data:
		if player_area == (Monster_Data[i].Area):
			selectable_monsters = Monster_Data[i]
			print (selectable_monsters)
			






