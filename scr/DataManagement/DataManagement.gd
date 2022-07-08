extends Node

var savePath = "user://userSave.dat"

var dataDictionary = {
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
			"suspeitos": ["Cuca", "Boto"],
			"interrogatorio": 1
		}
}

func saveData():
	var file = File.new()
	var fileOpen = file.open(savePath, File.WRITE)
	if fileOpen == OK:
		file.store_var (dataDictionary)
		file.close()
		print("jogo salvo")

func loadData():
	var file = File.new()
	var fileOpen = file.open(savePath, File.READ)
	if fileOpen == OK:
		dataDictionary = file.get_var()
		file.close()
