extends TextureRect

func _on_AnimationPlayer_animation_finished(anim_name):
	get_tree().change_scene("res://scr/Menus/IntroMenu.tscn")
	
func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene("res://scr/Menus/IntroMenu.tscn")
