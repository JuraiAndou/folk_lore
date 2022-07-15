extends Node

func _ready():
	$Mundo.playSong("openDisp")
	$Mundo.playSong("Menu")
	$texto.set_text("Ainda posso fazer "+ str(Mundo.interrogatorios) + " interrogatório(s) hoje!")
	$Sprite.play("Celular " + str(Mundo.interrogatorios))

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene("res://scr/Menus/MainMenu.tscn")

func _on_Fadein_animation_finished(anim_name):
	$Fadein.queue_free()

#botão voltar-----------------------------------------------------
func _on_botao_voltar_mouse_exited():
	$botao_voltar/AnimatedSprite.play("idle")

func _on_botao_voltar_input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(1):
		$botao_voltar/AnimatedSprite.play("click")
		get_tree().change_scene("res://scr/Menus/MainMenu.tscn")

func _on_botao_voltar_mouse_entered():
	$botao_voltar/AnimatedSprite.play("hover")
