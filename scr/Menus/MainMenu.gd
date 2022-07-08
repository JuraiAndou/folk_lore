extends Node


func _ready():	
	$Itens/Celular/Sprite.play("c"+ str(Mundo.interrogatorios))
	$Itens/Calendar/Sprite.play("c"+ str(Mundo.dia))
		
		
#sinais da pasta
func _on_Pasta_mouse_entered():
	$Itens/Pasta/Sprite.play("hover")

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
	$Itens/Celular/Sprite.play("c"+ str(Mundo.interrogatorios)+"h")

func _on_Celular_mouse_exited():
	$Itens/Celular/Sprite.play("c"+ str(Mundo.interrogatorios))

func _on_Celular_input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(1):
		get_tree().change_scene("res://scr/Menus/Celular_menu.tscn")


#sinais do calendario
func _on_Calendar_mouse_entered():
	$Itens/Calendar/Sprite.play("c" + str(Mundo.dia) + "h")

func _on_Calendar_mouse_exited():
	$Itens/Calendar/Sprite.play("c" + str(Mundo.dia))
	
func _on_Calendar_input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(1):
		get_tree().change_scene("res://scr/Menus/Calendário_Menu.tscn")

#Animação de fade
func _on_Fade_in_animation_finished(anim_name):
	$Fadein.queue_free()


