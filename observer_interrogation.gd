extends Node


func _physics_process(delta):
	if Input.is_action_just_pressed("ui_up"):
		get_tree().change_scene("res://scr/Menus/Ficha.tscn")


#função provisória para definição de informações verdadeiras
func _on_Dialog_dialogic_signal(value):
	if Mundo.objCuca.getListTrue().empty() == true:
		Mundo.objCuca.addInfoTrue(value)
	else:
		for i in Mundo.objCuca.getListTrue():
			if i == value:
				return
		Mundo.objCuca.addInfoTrue(value)
			
	print(Mundo.objCuca.getListTrue())
	DataManagement.dataDictionary["Cuca"] = Mundo.objCuca.getDictionary()
	DataManagement.saveData()

#Define indormações do tablet
func setInfosTablet(info):
	if Mundo.tabletInfos.empty() == true:
		Mundo.tabletInfos.append(info)
	else:
		for i in Mundo.tabletInfos:
			if i == info:
				return
		Mundo.tabletInfos.append(info)
		
	DataManagement.dataDictionary["Tablet"] = Mundo.tabletInfos
	DataManagement.saveData()
	
#func getInfosInterroga(info, objeto, tipo):
#	pass
	
