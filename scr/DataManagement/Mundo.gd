extends Node

#aqui vai ser a lista de suspeitos ate o momento, ela é feita assim para que os suspeitos spossam ser adicinados de forma aleatoria
#Além disso, essa lista será preechida por meio dos sinais
var listaSuspeitos = []
var objCuca
var objSaci
var objIara
var tabletInfos
var dia
var interrogatorios

func _ready():
	dia = DataManagement.dataDictionary["Mundo"]["dia"]
	listaSuspeitos = DataManagement.dataDictionary["Mundo"]["suspeitos"] 
	
