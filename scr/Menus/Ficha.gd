extends Node

var suspeitosIndice = 0 # a ideia é q por mais dos sinais de botões esse indice aumente e troque a pagina
var nomeSus = Mundo.listaSuspeitos[suspeitosIndice] #acessa a lista de suspeito no mundo
var suspAtual #suspeito mostrado na lista atualmente

var listInfoTrue = []
var listaInfoFalse = []

func getSusp():
	match nomeSus:
		"Cuca":
			suspAtual = Mundo.objCuca
			$Foto3x4.play("Cuca")
			$FotoLandScape.play("Cuca")
			Mundo.objCuca.setName("Cuca")
			Mundo.objCuca.setBio("Uma bruxa que captura crianças e que pode ter forma de uma velha ou de uma feiticeira com cabeça de jacaré, pelo menos é o que falam por aí. É tão velha quanto o próprio tempo e tem uma audição extremamente apurada (Eu sei, essas informações parecem contraditórias). A Cuca vive em uma caverna em algum lugar da floresta, ninguém nunca conseguiu descobrir onde fica, e só dorme uma noite a cada sete anos. Alguns boatos dizem que ela nasce de um ovo a cada mil anos e que a antiga se transforma em um pássaro de canto triste.")
			Mundo.objCuca.setNacionalidade("Brasileira")
			Mundo.objCuca.setGenero("Fem")
func _ready():
	getSusp()
	listaInfoFalse = suspAtual.getListFalse()
	listInfoTrue = suspAtual.getListTrue()

func setInfos():
	$infos/Nome.set_text(suspAtual.getName())
	$infos/Altura.set_text(suspAtual.getAltura())
	$infos/Idade.set_text(suspAtual.getIdade())
	$infos/Peso.set_text(suspAtual.getPeso())
	$infos/Nascionalidade.set_text(suspAtual.getNacionalidade())
	$infos/Genero.set_text(suspAtual.getGenero())
	$infos/Bio.set_text(suspAtual.getBio())

	
func setText():
	if listInfoTrue.empty() == true:
		return
	else:
		for i in range (len(listInfoTrue)):
			match i:
				0:
					$Textos/primeiro.set_text(listInfoTrue[i])
				
				1:
					$Textos/segundo.set_text(listInfoTrue[i])
				
				2:
					$Textos/ter.set_text(listInfoTrue[i])
				
				3:
					$Textos/qua.set_text(listInfoTrue[i])
					
				4:
					$Textos/qui.set_text(listInfoTrue[i])
				
				5:
					$Textos/sex.set_text(listInfoTrue[i])
				
				6:
					$Textos/set.set_text(listInfoTrue[i])
				
				7:
					$Textos/oit.set_text(listInfoTrue[i])
				
				8:
					$Textos/nov.set_text(listInfoTrue[i])
					
				9:
					$Textos/dez.set_text(listInfoTrue[i])
				
				10:
					$Textos/onc.set_text(listInfoTrue[i])
					
				11:
					$Textos/doz.set_text(listInfoTrue[i])
					
func leitorMentira():
	if listaInfoFalse.empty() == true:
		return
	else:
		for i in listaInfoFalse:
			match listInfoTrue.find(i):
				0:
					$Riscos/pr.visible = true
				
				1: 
					$Riscos/se.visible = true
				
				2: 
					$Riscos/ter.visible = true
					
				3: 
					$Riscos/qua.visible = true
				
				4:
					$Riscos/qui.visible = true
				
				5:
					$Riscos/sex.visible = true
				
				6:
					$Riscos/set.visible = true
				
				7:
					$Riscos/oit.visible = true
				
				8:
					$Riscos/nov.visible = true
			
				9:
					$Riscos/dez.visible = true
				
				10:
					$Riscos/onc.visible = true
		
				11:
					$Riscos/doz.visible = true
func _physics_process(delta):
	setInfos()
	setText()	
	leitorMentira()	
	
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene("res://scr/Menus/MainMenu.tscn")


#evento dos botões
func _on_boto_de_interrogar_mouse_entered():
	$botaoInterrogar/AnimatedSprite.play("hover")


func _on_botoInterrogar_mouse_exited():
	$botaoInterrogar/AnimatedSprite.play("idle")


func _on_botaoInterrogar_input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(1):
		$botaoInterrogar/AnimatedSprite.play("click")
		get_tree().change_scene("res://main.tscn")


