extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var dialog = Dialogic.start('dia1-cuca')
	add_child(dialog)

#func setInfosTablet(info):
	#print(info)
