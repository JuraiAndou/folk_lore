extends Node

var suspeitosIndice = 0 # a ideia é q por mais dos sinais de botões esse indice aumente e troque a pagina
var nomeSus = Mundo.listaSuspeitos[suspeitosIndice] #acessa a lista de suspeito no mundo
var suspAtual #suspeito mostrado na lista atualmente

var listInfoTrue = []
var listaInfoFalse = []

func _ready():
	getSusp()

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
			
		"Saci":
			suspAtual = Mundo.objSaci
			$Foto3x4.play("Saci")
			$FotoLandScape.play("Saci")
			Mundo.objSaci.setName("Saci")
			Mundo.objSaci.setBio("Saci, também conhecido como Saci-Pererê, é um jovem que possui uma perna só e que utiliza uma carapuça vermelha, tal artefato lhe concede poderes mágicos. Ele é considerado muito brincalhão e está sempre procurando fazer travessuras. É conhecido por: desaparecer com pequenos objetos, estragar a comida,  abrir porteiras durante a noite, provocar ventanias e assustar crianças dormindo. Tal ser se move rápido, criando redemoinhos, porem ele sempre precisa parar para desatar qualquer nó que é jogado em seu caminho (Um tique, talvez?) e não consegue atravessar córregos. Há quem diga que existe um jeito de capturá-lo, para isso é necessário lançar uma peneira ou um rosário sobre seu redemoinho e, em seguida, prender o Saci em uma garrafa tampada com rolha e marcada com uma cruz (Bem simples, não?).")
			Mundo.objSaci.setNacionalidade("Brasileiro")
			Mundo.objSaci.setGenero("Masc")
			
		"Iara":
			suspAtual = Mundo.objIara
			$Foto3x4.play("Iara")
			$FotoLandScape.play("Iara")
			Mundo.objIara.setName("Iara")
			Mundo.objIara.setBio("Uma sereia, tem o corpo, da cintura pra baixo, em forma de cauda de peixe. É conhecida por sua encantadora voz que enfeitiça e atrai quem a ouvir, fazendo-os mergulhar no rio, nem seus corpos são encontrados (Isso que é se afogar de paixão?). Alguns boatos dizem que fechar os olhos e tapar os ouvidos, assim quando se nota a presença dela, impede o funcionamento de seu feitiço (Mas isso não quero testar). Há, também, quem diga que um talismã feito com escada de boto pode livrar seu portador da sedução da Iara.")
			Mundo.objIara.setNacionalidade("Brasileira")
			Mundo.objIara.setGenero("Fem")
		

#defini os texto
func setInfos():
	$infos/Nome.set_text(suspAtual.getName())
	$infos/Altura.set_text(suspAtual.getAltura())
	$infos/Idade.set_text(suspAtual.getIdade())
	$infos/Peso.set_text(suspAtual.getPeso())
	$infos/Nascionalidade.set_text(suspAtual.getNacionalidade())
	$infos/Genero.set_text(suspAtual.getGenero())
	$infos/Bio.set_text(suspAtual.getBio())
	listaInfoFalse = suspAtual.getListFalse()
	listInfoTrue = suspAtual.getListTrue()

#desenha os textos
func setText():
	if listInfoTrue.empty() == true:
		$Textos/primeiro.set_text("")
		$Textos/segundo.set_text("")
		$Textos/ter.set_text("")
		$Textos/qua.set_text("")
		$Textos/qui.set_text("")
		$Textos/sex.set_text("")
		$Textos/set.set_text("")
		$Textos/oit.set_text("")
		$Textos/nov.set_text("")
		$Textos/dez.set_text("")
		$Textos/onc.set_text("")
		$Textos/doz.set_text("")
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

#desenhas as linhas em informações mentirosas
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

#desenhar as abas
func drawLabels():
	for i in range(len(Mundo.listaSuspeitos)):
		match i:
			0:
				$Abas/pr/CollisionShape2D.disabled = false
				$Abas/pr/CollisionShape2D/sprite.play("icon")
			1:
				$Abas/seg/CollisionShape2D.disabled = false
				$Abas/seg/CollisionShape2D/sprite.play("icon")
			
			2:
				$Abas/ter/CollisionShape2D.disabled = false
				$Abas/ter/CollisionShape2D/sprite.play("icon")

func _process(delta):
	getSusp()
	setText()
	leitorMentira()
	drawLabels()
	
func _physics_process(delta):
	setInfos()
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene("res://scr/Menus/MainMenu.tscn")
	
	if Input.is_action_just_pressed("ui_up"):
		Mundo.listaSuspeitos.append("Iara")
		
	

#evento dos botões--------------------------------------------------------------
func _on_boto_de_interrogar_mouse_entered():
	$botaoInterrogar/AnimatedSprite.play("hover")


func _on_botoInterrogar_mouse_exited():
	$botaoInterrogar/AnimatedSprite.play("idle")


func _on_botaoInterrogar_input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(1):
		$botaoInterrogar/AnimatedSprite.play("click")
		get_tree().change_scene("res://main.tscn")

##Inputs dentro das abas---------
#aba 1
func _on_pr_input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(1):
		suspeitosIndice = 0
		nomeSus = Mundo.listaSuspeitos[suspeitosIndice] 

#aba2
func _on_seg_input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(1):
		suspeitosIndice = 1
		nomeSus = Mundo.listaSuspeitos[suspeitosIndice] 

#aba3
func _on_ter_input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(1):
		suspeitosIndice = 2
		nomeSus = Mundo.listaSuspeitos[suspeitosIndice] 
