extends Node

func _ready():
	$Mundo.playSong("Menu")
	setText()

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
			Mundo.dia += 1
			DataManagement.dataDictionary ["Mundo"]["dia"] = Mundo.dia
			DataManagement.saveData()
			
			get_tree().change_scene("res://scr/Menus/MainMenu.tscn")
			
func setText():
	if Mundo.dia == 1:
		$AnimationPlayer/Label.set_text("Já se passou um dia desde o assassinato...")
		$AnimationPlayer/Label2.set_text("... e me encontro, mais uma vez, em um beco sem saída.")
		$AnimationPlayer/Label3.set_text("Eles não parecem que irão me contar o que eu quero tão facilmente...")
		$AnimationPlayer/Label4.set_text("... argh! Por que se recusam a ajudar?")
		$AnimationPlayer/Label5.set_text("Bem, a noite consome a cidade novamente. Hora de voltar ao trabalho, tenho mais suspeitos para interrogar.")
	
	elif Mundo.dia == 2:
		$AnimationPlayer/Label.set_text("Minha cabeça doí cada vez mais.")
		$AnimationPlayer/Label2.set_text("Todo mundo tem uma desculpa...")
		$AnimationPlayer/Label3.set_text("E por que não teriam?")
		$AnimationPlayer/Label4.set_text("Isso já era de se esperar, mas eu sei que alguém vai cometer um erro...")
		$AnimationPlayer/Label5.set_text("... e eu estarei lá quando acontecer.")
	
	
