extends Node

#aqui vai ser a lista de suspeitos ate o momento, ela é feita assim para que os suspeitos spossam ser adicinados de forma aleatoria
#Além disso, essa lista será preechida por meio dos sinais
var listaSuspeitos = []
var objCuca
var objSaci
var objIara
var tabletInfos

func _ready():
	listaSuspeitos.append("Cuca")
	listaSuspeitos.append("Saci")
	
	

#Esses objetos sao inicados assim que o jogo entra na cena do "intro menu"
#Eles são do tipo personagem
