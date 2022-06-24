extends Node

#aqui vai ser a lista de suspeitos ate o momento, ela é feita assim para que os suspeitos spossam ser adicinados de forma aleatoria
#Além disso, essa lista será preechida por meio dos sinais
var listaSuspeitos = []
var objCuca

func _ready():
	listaSuspeitos.append("Cuca")


#Esses objetos sao inicados assim que o jogo entra na cena do "intro menu"
#Eles são do tipo personagem
