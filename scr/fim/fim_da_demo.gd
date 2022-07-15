extends Node

#botão de apagar save____________________________________________________
func _on_ApagarSave_input_event(viewport, event, shape_idx):
	if Input.is_action_just_released("click"):
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
				"fullscreen": true,
				"Audio": false
			}
		}
		DataManagement.saveData()
		get_tree().quit()

func _on_ApagarSave_mouse_entered():
	$ColorRect/ApagarSave/Sprite.play("hover")

func _on_ApagarSave_mouse_exited():
	$ColorRect/ApagarSave/Sprite.play("idle")

#botão de sair do jogo___________________________________________________
func _on_sair_input_event(viewport, event, shape_idx):
	if Input.is_action_just_released("click"):
		get_tree().quit()

func _on_sair_mouse_entered():
	$ColorRect/sair/Sprite.play("hover")

func _on_sair_mouse_exited():
	$ColorRect/sair/Sprite.play("idle")
