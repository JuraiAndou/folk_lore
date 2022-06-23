extends Node
var Personagem = load("Personagem.gd")

func _ready():
	var file = File.new()
	if file.file_exists("user://userSave.dat"):
		DataManagement.loadData()
		instance_chars()
		
	else:
		DataManagement.saveData()
		instance_chars()
		
func instance_chars():
	Mundo.objCuca = Personagem.new("Cuca")
	
func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene("res://scr/Menus/MainMenu.tscn")
