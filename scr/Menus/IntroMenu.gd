extends Node

var Cuca
var Saci
var Iara
var Boto

func ready():
	var file = File.new()
	if file.file_exists("user://userSave.dat"):
		DataManagement.loadData()
		Cuca = DataManagement.dataDictionary["Cuca"]
		Saci = DataManagement.dataDictionary["Saci"]
		Iara = DataManagement.dataDictionary["Iara"]
		Boto = DataManagement.dataDictionary["Boto"]
	else:
		Cuca = Personagem.objPersonagem.new()
		Saci = Personagem.objPersonagem.new()
		Iara = Personagem.objPersonagem.new()
		Boto = Personagem.objPersonagem.new()
		
		DataManagement.dataDictionary["Cuca"] = Cuca
		DataManagement.dataDictionary["Saci"] = Saci
		DataManagement.dataDictionary["Iara"] = Iara
		DataManagement.dataDictionary["Boto"] = Boto
		DataManagement.saveData()
		
	
func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene("res://scr/Menus/MainMenu.tscn")
