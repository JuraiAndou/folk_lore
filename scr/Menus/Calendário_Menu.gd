extends Node

func _ready():
	$Sprite.play("Dia " + str(Mundo.dia))

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene("res://scr/Menus/MainMenu.tscn")


func _on_Fadein_animation_finished(anim_name):
	$Fadein.queue_free()
