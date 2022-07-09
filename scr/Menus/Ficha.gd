extends Node

var suspeitosIndice = 0 # a ideia é q por mais dos sinais de botões esse indice aumente e troque a pagina
var nomeSus = Mundo.listaSuspeitos[suspeitosIndice] #acessa a lista de suspeito no mundo

var listInfoTrue = []
var listaInfoFalse = []

func _ready():
	getSusp()

func getSusp():
	match nomeSus:
		"Cuca":
			Mundo.suspAtual = Mundo.objCuca
			$Foto3x4.play("Cuca")
			$FotoLandScape.play("Cuca")
			Mundo.objCuca.setName("Cuca")
			Mundo.objCuca.setBio("Uma bruxa que captura crianças e que pode ter forma de uma velha ou de uma feiticeira com cabeça de jacaré, pelo menos é o que falam por aí. É tão velha quanto o próprio tempo e tem uma audição extremamente apurada (Eu sei, essas informações parecem contraditórias). A Cuca vive em uma caverna em algum lugar da floresta, ninguém nunca conseguiu descobrir onde fica, e só dorme uma noite a cada sete anos. Alguns boatos dizem que ela nasce de um ovo a cada mil anos e que a antiga se transforma em um pássaro de canto triste.")
			Mundo.objCuca.setNacionalidade("Brasileira")
			Mundo.objCuca.setGenero("Fem")
			
		"Saci":
			Mundo.suspAtual = Mundo.objSaci
			$Foto3x4.play("Saci")
			$FotoLandScape.play("Saci")
			Mundo.objSaci.setName("Saci")
			Mundo.objSaci.setBio("Saci, também conhecido como Saci-Pererê, é um jovem que possui uma perna só e que utiliza uma carapuça vermelha, tal artefato lhe concede poderes mágicos. Ele é considerado muito brincalhão e está sempre procurando fazer travessuras. É conhecido por: desaparecer com pequenos objetos, estragar a comida,  abrir porteiras durante a noite, provocar ventanias e assustar crianças dormindo. Tal ser se move rápido, criando redemoinhos, porem ele sempre precisa parar para desatar qualquer nó que é jogado em seu caminho (Um tique, talvez?) e não consegue atravessar córregos. Há quem diga que existe um jeito de capturá-lo, para isso é necessário lançar uma peneira ou um rosário sobre seu redemoinho e, em seguida, prender o Saci em uma garrafa tampada com rolha e marcada com uma cruz (Bem simples, não?).")
			Mundo.objSaci.setNacionalidade("Brasileiro")
			Mundo.objSaci.setGenero("Masc")
			
		"Iara":
			Mundo.suspAtual = Mundo.objIara
			$Foto3x4.play("Iara")
			$FotoLandScape.play("Iara")
			Mundo.objIara.setName("Iara")
			Mundo.objIara.setBio("Uma sereia, tem o corpo, da cintura pra baixo, em forma de cauda de peixe. É conhecida por sua encantadora voz que enfeitiça e atrai quem a ouvir, fazendo-os mergulhar no rio, nem seus corpos são encontrados (Isso que é se afogar de paixão?). Alguns boatos dizem que fechar os olhos e tapar os ouvidos, assim quando se nota a presença dela, impede o funcionamento de seu feitiço (Mas isso não quero testar). Há, também, quem diga que um talismã feito com escada de boto pode livrar seu portador da sedução da Iara.")
			Mundo.objIara.setNacionalidade("Brasileira")
			Mundo.objIara.setGenero("Fem")
		
		"Boto":
			Mundo.suspAtual = Mundo.objBoto
			$Foto3x4.play("Boto")
			$FotoLandScape.play("Boto")
			Mundo.objBoto.setName("Boto")
			Mundo.objBoto.setNacionalidade("Brasileiro")
			Mundo.objBoto.setGenero("???")
			Mundo.objBoto.setBio("Consegue se transformar em humano e em boto, como seu nome sugere. Dizem que sempre aparece em épocas festivas na forma de uma homem elegante, vestido de branco e com um chapéu, isso porque precisa esconder sua narina que se mantém na forma humana e que fica no topo de sua cabeça. Ele seduz moças, levando-as para o fundo do rio (Não descreverei o que ocorre em seguida.....).")
		
#defini os texto
func setInfos():
	$infos/Nome.set_text(Mundo.suspAtual.getName())
	$infos/Altura.set_text(Mundo.suspAtual.getAltura())
	$infos/Idade.set_text(Mundo.suspAtual.getIdade())
	$infos/Peso.set_text(Mundo.suspAtual.getPeso())
	$infos/Nascionalidade.set_text(Mundo.suspAtual.getNacionalidade())
	$infos/Genero.set_text(Mundo.suspAtual.getGenero())
	$infos/Bio.set_text(Mundo.suspAtual.getBio())
	listaInfoFalse = Mundo.suspAtual.getListFalse()
	listInfoTrue = Mundo.suspAtual.getListTrue()

#desenha os textos
func setText():
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
	$Riscos/pr.visible = false
	$Riscos/se.visible = false
	$Riscos/ter.visible = false
	$Riscos/qua.visible = false
	$Riscos/qui.visible = false
	$Riscos/sex.visible = false
	$Riscos/set.visible = false
	$Riscos/oit.visible = false
	$Riscos/nov.visible = false
	$Riscos/dez.visible = false
	$Riscos/onc.visible = false
	$Riscos/doz.visible = false
	
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
				$Abas/pr/CollisionShape2D/sprite.play(str(Mundo.listaSuspeitos[0]))
			1:
				$Abas/seg/CollisionShape2D.disabled = false
				$Abas/seg/CollisionShape2D/sprite.play(str(Mundo.listaSuspeitos[1]))
			
			2:
				$Abas/ter/CollisionShape2D.disabled = false
				$Abas/ter/CollisionShape2D/sprite.play(str(Mundo.listaSuspeitos[2]))
			
			3:
				$Abas/ter/CollisionShape2D.disabled = false
				$Abas/ter/CollisionShape2D/sprite.play(str(Mundo.listaSuspeitos[3]))

func _process(delta):
	getSusp()
	setInfos()
	setText()
	leitorMentira()
	drawLabels()
	questIsPossible()
	
func _physics_process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene("res://scr/Menus/MainMenu.tscn")
	
#Essa função existe para o botão de interrogar so aparecer quando for possivel entrevistar o suspeito
func questIsPossible():
	if Mundo.dia == 1:
		if str(Mundo.suspAtual.getName()) == "Cuca":
			$botaoInterrogar.visible = true
			$botaoInterrogar/CollisionShape2D.disabled = false
		else:
			$botaoInterrogar.visible = false
			$botaoInterrogar/CollisionShape2D.disabled = true
			
	elif Mundo.dia == 2:
		if str(Mundo.suspAtual.getName()) == "Boto":
			$botaoInterrogar.visible = true
			$botaoInterrogar/CollisionShape2D.disabled = false
			
		elif str(Mundo.suspAtual.getName()) == "Saci":
			$botaoInterrogar.visible = true
			$botaoInterrogar/CollisionShape2D.disabled = false
			
		else:
			$botaoInterrogar.visible = false
			$botaoInterrogar/CollisionShape2D.disabled = true

#botão interrogar--------------------------------------------------------------
func _on_boto_de_interrogar_mouse_entered():
	$botaoInterrogar/AnimatedSprite.play("hover")


func _on_botoInterrogar_mouse_exited():
	$botaoInterrogar/AnimatedSprite.play("idle")

func _on_botaoInterrogar_input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(1):
		$botaoInterrogar/AnimatedSprite.play("click")
		
		#foi gasto 1 interrogatorio então se diminui 
		Mundo.interrogatorios -= 1
		DataManagement.dataDictionary["Mundo"]["interrogatorio"] = Mundo.interrogatorios
		DataManagement.saveData()
		
		get_tree().change_scene("res://main.tscn")

##Inputs dentro das abas------------------------------------------------------------------------------
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

func _on_Fadein_animation_finished(anim_name):
	$Fadein.queue_free()
	

#botão voltar------------------------------------------------------------------------------
func _on_botao_voltar_mouse_exited():
	$botao_voltar/AnimatedSprite.play("idle")

func _on_botao_voltar_input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(1):
		$botao_voltar/AnimatedSprite.play("click")
		get_tree().change_scene("res://scr/Menus/MainMenu.tscn")

func _on_botao_voltar_mouse_entered():
	$botao_voltar/AnimatedSprite.play("hover")
