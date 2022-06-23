extends Node

var savePath = "user://userSave.dat"

var dataDictionary = {
	"Cuca": "",
	"Saci": "",
	"Iara": "",
	"Boto": ""
}

func saveData():
	var file = File.new()
	var fileOpen = file.open(savePath, File.WRITE)
	if fileOpen == OK:
		file.store_var (dataDictionary)
		file.close()

func loadData():
	var file = File.new()
	var fileOpen = file.open(savePath, File.READ)
	if fileOpen == OK:
		dataDictionary = file.get_var()
		file.close()
