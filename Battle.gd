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
	load_mobs()
	load_party()


func load_party():
	var Player_vars = get_node("/root/GlobalVaribles")
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
	Monster1 = DataImport.enemy_data["Slime"]
	monsterlabel1 = get_node("EnemyPanel/Monster1")
	monsterlabel1.text = String(Monster1.Name)	














