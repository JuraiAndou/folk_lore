extends Node


func _physics_process(delta):
	pass

#função provisória para definição de informações verdadeiras
func _on_Dialog_dialogic_signal(value):
	if Mundo.objCuca.getListTrue().empty() == true:
		Mundo.objCuca.addInfoTrue(value)
	else:
		for i in Mundo.objCuca.getListTrue():
			if i == value:
				return
		Mundo.objCuca.addInfoTrue(value)
					
	DataManagement.dataDictionary["Cuca"] = Mundo.objCuca.getDictionary()
	DataManagement.saveData
	
#função que gerencia as infos do interrogatorio
func setInfosInterrogatorio(info, suspeito, tipo):
	#TIPOS DE INFO --------------------------
			#informação verdeira(infoTrue)
			#informação falsa (infoFalse)
			#indicação de suspeito (novoSus)
			#Informação do caso (infoTablet)
	match tipo:
		"infoTrue":
			addListaTrue(suspeito, info)
		"infoFalse":
			addListaFalse(suspeito, info)
		"novoSus":
			addNovoSus(info)
		"infoTablet":
			addInfosTablet(info)

#adiciona informações verdadeira nos objetos
func addListaTrue(suspeito, info):
	match suspeito:
		"Cuca":
			if Mundo.objCuca.getListTrue().empty() == true:
				Mundo.objCuca.addInfoTrue(info)
			else:
				for i in Mundo.objCuca.getListTrue():
					if i == info:
						return
				Mundo.objCuca.addInfoTrue(info)
					
			DataManagement.dataDictionary["Cuca"] = Mundo.objCuca.getDictionary()
		
		"Saci":
			if Mundo.objSaci.getListTrue().empty() == true:
				Mundo.objSaci.addInfoTrue(info)
			else:
				for i in Mundo.objSaci.getListTrue():
					if i == info:
						return
				Mundo.objSaci.addInfoTrue(info)
					
			DataManagement.dataDictionary["Saci"] = Mundo.objSaci.getDictionary()
		
		"Boto":
			if Mundo.objBoto.getListTrue().empty() == true:
				Mundo.objBoto.addInfoTrue(info)
			else:
				for i in Mundo.objBoto.getListTrue():
					if i == info:
						return
				Mundo.objBoto.addInfoTrue(info)
					
			DataManagement.dataDictionary["Boto"] = Mundo.objBoto.getDictionary()
		
		"Iara":
			if Mundo.objIara.getListTrue().empty() == true:
				Mundo.objIara.addInfoTrue(info)
			else:
				for i in Mundo.objIara.getListTrue():
					if i == info:
						return
				Mundo.objIara.addInfoTrue(info)
					
			DataManagement.dataDictionary["Iara"] = Mundo.objIara.getDictionary()
	
	DataManagement.saveData()

#Adiciona informações falsas nos objetos
func addListaFalse(suspeito, info):
	match suspeito:
		"Cuca":
			if Mundo.objCuca.getListFalse().empty() == true:
				Mundo.objCuca.addInfoFalse(info)
			else:
				for i in Mundo.objCuca.getListFalse():
					if i == info:
						return
				Mundo.objCuca.addInfoFalse(info)
					
			DataManagement.dataDictionary["Cuca"] = Mundo.objCuca.getDictionary()
		
		"Saci":
			if Mundo.objSaci.getListFalse().empty() == true:
				Mundo.objSaci.addInfoFalse(info)
			else:
				for i in Mundo.objSaci.getListFalse():
					if i == info:
						return
				Mundo.objSaci.addInfoFalse(info)
					
			DataManagement.dataDictionary["Saci"] = Mundo.objSaci.getDictionary()
		
		"Boto":
			if Mundo.objBoto.getListFalse().empty() == true:
				Mundo.objBoto.addInfoFalse(info)
			else:
				for i in Mundo.objBoto.getListFalse():
					if i == info:
						return
				Mundo.objBoto.addInfoFalse(info)
					
			DataManagement.dataDictionary["Boto"] = Mundo.objBoto.getDictionary()
		
		"Iara":
			if Mundo.objIara.getListFalse().empty() == true:
				Mundo.objIara.addInfoFalse(info)
			else:
				for i in Mundo.objIara.getListFalse():
					if i == info:
						return
				Mundo.objIara.addInfoFalse(info)
					
			DataManagement.dataDictionary["Iara"] = Mundo.objIara.getDictionary()
	
	DataManagement.saveData()

#Adicinona novo suspeito
func addNovoSus (info):
	if Mundo.listaSuspeitos.empty() == true:
		match info:
			"Boto":
				Mundo.listaSuspeitos.append("Boto")
				
			"Saci":
				Mundo.listaSuspeitos.append("Saci")
				
			"Iara":
				Mundo.listaSuspeitos.append("Iara")
	else:
		for i in Mundo.listaSuspeitos:
			if i == info:
				return
		match info:
			"Boto":
				Mundo.listaSuspeitos.append("Boto")
				
			"Saci":
				Mundo.listaSuspeitos.append("Saci")
				
			"Iara":
				Mundo.listaSuspeitos.append("Iara")
					
	DataManagement.dataDictionary["Mundo"]["suspeitos"] = Mundo.listaSuspeitos
	DataManagement.saveData()
	
#Define informações do tablet
func addInfosTablet(info):
	if Mundo.tabletInfos.empty() == true:
		Mundo.tabletInfos.append(info)
	else:
		for i in Mundo.tabletInfos:
			if i == info:
				return
		Mundo.tabletInfos.append(info)
		
	DataManagement.dataDictionary["Tablet"] = Mundo.tabletInfos
	DataManagement.saveData()
