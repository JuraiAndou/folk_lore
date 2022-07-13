extends Node



func _on_Fullscreen_pressed():
	OS.window_fullscreen = !OS.window_fullscreen
	DataManagement.dataDictionary["Mundo"]["fullscreen"] = OS.window_fullscreen
	DataManagement.saveData()


func _on_mute_pressed():
	AudioServer.set_bus_mute(Mundo.music_bus, not AudioServer.is_bus_mute(Mundo.music_bus))
	DataManagement.dataDictionary["Mundo"]["Audio"] = AudioServer.is_bus_mute(Mundo.music_bus)
	DataManagement.saveData()

func _on_Button_pressed():
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

#botão voltar------------------------------------------------------------------------------
func _on_botao_voltar_mouse_exited():
	$botao_voltar/AnimatedSprite.play("idle")

func _on_botao_voltar_input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(1):
		$botao_voltar/AnimatedSprite.play("click")
		get_tree().change_scene("res://scr/Menus/MainMenu.tscn")

func _on_botao_voltar_mouse_entered():
	$botao_voltar/AnimatedSprite.play("hover")
