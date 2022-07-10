extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	var dialog = Dialogic.start("dia" + str(Mundo.dia) +"-"+ str(Mundo.suspAtual.getName()))#Dialogic.start("dia2-Saci")
	#print("dia" + str(Mundo.dia) + str(Mundo.suspAtual.getName()))
	add_child(dialog)

#func _physics_process(delta):
	#if Input.is_action_just_pressed("ui_cancel"):
	#		get_tree().change_scene("res://scr/Menus/MainMenu.tscn")
	
	
