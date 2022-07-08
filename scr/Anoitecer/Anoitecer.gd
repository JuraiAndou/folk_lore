extends Node


func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
			Mundo.dia += 1
			DataManagement.dataDictionary ["Mundo"]["dia"] = Mundo.dia
			DataManagement.saveData()
			print()
			
			get_tree().change_scene("res://scr/Menus/MainMenu.tscn")
			
			
	
	
