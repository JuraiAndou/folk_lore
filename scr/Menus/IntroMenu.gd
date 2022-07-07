extends Node
var Personagem = load("Personagem.gd")
var cutScene

func _ready():
	var file = File.new()
	if file.file_exists("user://userSave.dat"):
		DataManagement.loadData()
		instance_chars()
		
	else:
		DataManagement.saveData()
		instance_chars()
		
func instance_chars():
	#inicia personagem
	Mundo.objCuca = Personagem.new("Cuca")
	Mundo.objIara = Personagem.new("Iara")
	Mundo.objSaci = Personagem.new("Saci")
	Mundo.objBoto = Personagem.new("Boto") 
	
	#resgasta infos do tablet
	Mundo.tabletInfos = DataManagement.dataDictionary["Tablet"]
	
	#variavel da cutscene inicial e tutorial
	cutScene = DataManagement.dataDictionary["Mundo"]["cutscene"]
	
func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		if cutScene == "false":
			get_tree().change_scene("res://scr/Menus/MainMenu.tscn")
		else:
			get_tree().change_scene("res://scr/cutsceneINi.tscn")
			DataManagement.dataDictionary["Mundo"]["cutscene"] = "false"
			DataManagement.saveData()
