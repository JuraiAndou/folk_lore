extends Node

#sinais da pasta
func _on_Pasta_mouse_entered():
	$Itens/Pasta/Sprite.play("Hover")

func _on_Pasta_mouse_exited():
	$Itens/Pasta/Sprite.play("idle")

func _on_Pasta_input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(1):
		get_tree().change_scene("res://scr/Menus/Ficha.tscn")


#sinais do tablet
func _on_Tablet_mouse_entered():
	$Itens/Tablet/Sprite.play("hover")

func _on_Tablet_mouse_exited():
		$Itens/Tablet/Sprite.play("idle")
		
func _on_Tablet_input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(1):
		get_tree().change_scene("res://scr/Menus/Tablet.tscn")


#sinais do celular
func _on_Celular_mouse_entered():
	$Itens/Celular/Sprite.play("hover")

func _on_Celular_mouse_exited():
	$Itens/Celular/Sprite.play("idle")

func _on_Celular_input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(1):
		print("Abrir celular")


#sinais do calendario
func _on_Calendar_mouse_entered():
	$Itens/Calendar/Sprite.play("hover")

func _on_Calendar_mouse_exited():
	$Itens/Calendar/Sprite.play("idle")
	
func _on_Calendar_input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(1):
		print("Ver calendario")

#Animação de fade
func _on_Fade_in_animation_finished(anim_name):
	$Fadein.queue_free()
