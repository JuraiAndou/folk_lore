extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	if Input.is_action_just_pressed("ui_up"):
		get_tree().change_scene("res://scr/Menus/Ficha.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Dialog_dialogic_signal(value):
	if Mundo.objCuca.getListTrue().empty() == true:
		Mundo.objCuca.addInfoTrue(value)
	else:
		for i in Mundo.objCuca.getListTrue():
			if i == value:
				return
		Mundo.objCuca.addInfoTrue(value)
			
	print(Mundo.objCuca.getListTrue())
	DataManagement.dataDictionary["Cuca"] = Mundo.objCuca.getDictionary()
	DataManagement.saveData()

func setInfosTablet(info):
	Mundo.tabletInfos.append(info)

