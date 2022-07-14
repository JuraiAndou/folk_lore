extends Node


func _ready():
	$Mundo.playSong("Menu")
	$fundo/itens/FullScreen/Sprite.play(str(OS.window_fullscreen))
	$fundo/itens/mute/Sprite.play(str(AudioServer.is_bus_mute(Mundo.music_bus)))

#botão voltar------------------------------------------------------------------------------
func _on_botao_voltar_mouse_exited():
	$botao_voltar/AnimatedSprite.play("idle")

func _on_botao_voltar_input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(1):
		$botao_voltar/AnimatedSprite.play("click")
		get_tree().change_scene("res://scr/Menus/MainMenu.tscn")

func _on_botao_voltar_mouse_entered():
	$botao_voltar/AnimatedSprite.play("hover")

#botão de apagar save____________________________________________________
func _on_ApagarSave_input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(1):
		DataManagement.dataDictionary = {
		"Cuca": {
				"nome": "Desconhecido(a)",
				"bio": "xxx",
				"idade": "xxx",
				"altura": "xxx",
				"genero": "xxx",
				"peso": "xxx",
				"nascionalidade": "xxx",
				"infosTrue": [],
				"infosFalse": []
			},
			
		"Iara": {
				"nome": "Desconhecido(a)",
				"bio": "xxx",
				"idade": "xxx",
				"altura": "xxx",
				"genero": "xxx",
				"peso": "xxx",
				"nascionalidade": "xxx",
				"infosTrue": [],
				"infosFalse": []
			},
			
		"Saci": {
				"nome": "Desconhecido(a)",
				"bio": "xxx",
				"idade": "xxx",
				"altura": "xxx",
				"genero": "xxx",
				"peso": "xxx",
				"nascionalidade": "xxx",
				"infosTrue": [],
				"infosFalse": []
			},
		"Boto": {
				"nome": "Desconhecido(a)",
				"bio": "xxx",
				"idade": "xxx",
				"altura": "xxx",
				"genero": "xxx",
				"peso": "xxx",
				"nascionalidade": "xxx",
				"infosTrue": [],
				"infosFalse": []
			},
		"Tablet": [],
		"Mundo":{
				"cutscene": "true",
				"dia": 1,
				"suspeitos": ["Cuca"],
				"interrogatorio": 1,
				"fullscreen": false,
				"Audio": false
			}
		}
		DataManagement.saveData()
		get_tree().quit()

func _on_ApagarSave_mouse_entered():
	$fundo/itens/ApagarSave/Sprite.play("hover")

func _on_ApagarSave_mouse_exited():
	$fundo/itens/ApagarSave/Sprite.play("idle")

#botão de sair do jogo___________________________________________________
func _on_sair_input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(1):
		get_tree().quit()

func _on_sair_mouse_entered():
	$fundo/itens/sair/Sprite.play("hover")

func _on_sair_mouse_exited():
	$fundo/itens/sair/Sprite.play("idle")

#botão fullscreen-----------------------------
func _on_FullScreen_input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(1):
		OS.window_fullscreen = !OS.window_fullscreen
		$fundo/itens/FullScreen/Sprite.play(str(OS.window_fullscreen))
		
		DataManagement.dataDictionary["Mundo"]["fullscreen"] = OS.window_fullscreen
		DataManagement.saveData()

func _on_FullScreen_mouse_entered():
	$fundo/itens/FullScreen/Sprite.play(str(OS.window_fullscreen)+"Hover")

func _on_FullScreen_mouse_exited():
	$fundo/itens/FullScreen/Sprite.play(str(OS.window_fullscreen))

#botão de mute----------------------------------------
func _on_mute_input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(1):
		AudioServer.set_bus_mute(Mundo.music_bus, not AudioServer.is_bus_mute(Mundo.music_bus))
		$fundo/itens/mute/Sprite.play(str(AudioServer.is_bus_mute(Mundo.music_bus)))
		
		DataManagement.dataDictionary["Mundo"]["Audio"] = AudioServer.is_bus_mute(Mundo.music_bus)
		DataManagement.saveData()

func _on_mute_mouse_entered():
	$fundo/itens/mute/Sprite.play(str(AudioServer.is_bus_mute(Mundo.music_bus))+"Hover")

func _on_mute_mouse_exited():
	$fundo/itens/mute/Sprite.play(str(AudioServer.is_bus_mute(Mundo.music_bus)))

func _on_Fadein_animation_finished(anim_name):
	$Fadein.queue_free()
