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
			
		"Saci":
			suspAtual = Mundo.objSaci
		
		"Boto":
			suspAtual = Mundo.objBoto
		
		"Iara":
			#var idSuspAtual = Mundo.objIara.get_object_id()
			suspAtual = instance_from_id(Mundo.objIara)
			print(suspAtual)
			

func _ready():
	getSusp()
	#suspAtual.setName("Iara")
	#listaInfoFalse = suspAtual.getListFalse()
	#listInfoTrue = suspAtual.getListTrue()

func setInfos():
	if listInfoTrue.empty() == true:
		return
	else:
		$infos/Nome.set_text(suspAtual.getName())
		$infos/Altura.set_text(suspAtual.getAltura())
		$infos/Idade.set_text(suspAtual.getIdade())
		$infos/Peso.set_text(suspAtual.Peso())
					
#func leitorMentira():
#	if listaFalse.empty() == true:
#		return
#	else:
#		for i in listaFalse:
#			match list.find(i):
#				0:
#					$Riscos/pr.visible = true
#				
#				1: 
#					$Riscos/se.visible = true
#				
#				2: 
#					$Riscos/ter.visible = true
#					
#				3: 
#					$Riscos/qua.visible = true
#				
#				4:
#					$Riscos/qui.visible = true
		


func _physics_process(delta):
	setInfos()
	#setText()	
#	leitorMentira()	

