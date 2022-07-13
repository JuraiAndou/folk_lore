extends Node

#aqui vai ser a lista de suspeitos ate o momento, ela é feita assim para que os suspeitos spossam ser adicinados de forma aleatoria
#Além disso, essa lista será preechida por meio dos sinais
var listaSuspeitos = []
var objCuca
var objSaci
var objIara
var objBoto
var tabletInfos
var dia
var interrogatorios
var suspAtual #suspeito mostrado na ficha atualmente
var music_bus = AudioServer.get_bus_index("Master") #controlador de audio

#inicialização do jogo
func _ready():
	DataManagement.loadData()
	dia = DataManagement.dataDictionary["Mundo"]["dia"]
	listaSuspeitos = DataManagement.dataDictionary["Mundo"]["suspeitos"]
	interrogatorios = DataManagement.dataDictionary["Mundo"]["interrogatorio"]
	AudioServer.set_bus_mute(Mundo.music_bus, DataManagement.dataDictionary["Mundo"]["Audio"])
	OS.window_fullscreen = DataManagement.dataDictionary["Mundo"]["fullscreen"]


	
