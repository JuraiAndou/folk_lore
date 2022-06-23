extends Node
var Personagem = load("Personagem.gd")

func _ready():
	var file = File.new()
	if file.file_exists("user://userSave.dat"):
		DataManagement.loadData()
		Mundo.objCuca = DataManagement.dataDictionary["Cuca"]
		Mundo.objSaci = DataManagement.dataDictionary["Saci"]
		Mundo.objIara = DataManagement.dataDictionary["Iara"]
		Mundo.objBoto = DataManagement.dataDictionary["Boto"]
		var penis = instance_from_id(DataManagement.dataDictionary["Iara"].get_instance_id())
		print(penis)
		
	else:
		var Cuca = Personagem.instance()
		var Saci = Personagem.instance()
		var Iara = Personagem.instance()
		var Boto = Personagem.instance()
		
		DataManagement.dataDictionary["Cuca"] = Cuca
		DataManagement.dataDictionary["Saci"] = Saci
		DataManagement.dataDictionary["Iara"] = Iara
		DataManagement.dataDictionary["Boto"] = Boto
		DataManagement.saveData()
		
		
	
func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene("res://scr/Menus/MainMenu.tscn")
