extends Node
	
var nome =""
var bio =""
var idade =""
var altura =""
var genero=""
var peso=""
var nacionalidade =""
var infosTrue = []
var infosFalse = []
	

func _init(character):
	setName(DataManagement.dataDictionary[character]["nome"])

#setters
func setName(n):
	self.nome = n
	
func setIdade(i):
	self.idade = i

func setAltura(a):
	self.altura = a

func setNacionalidade(n):
	self.nacionalidade = n
		
func setPeso(p):
	self.peso = p
		
func setBio(b):
	self.bio = b

func setGenero(g):
	self.genero = g

func addInfoTrue(info):
	self.infosTrue.append(info)

func addInfoFalse(info):
	self.infosFalse.append(info)

	#getters
func getName():
	return self.nome
		
func getIdade():
	return self.idade

func getAltura():
	return self.altura

func getNacionalidade():
	return self.nacionalidade
		
func getPeso():
	return self.peso
		
func getBio():
	return self.bio

func getGenero():
	return self.genero

func getListTrue():
	return self.infosTrue

func getListFalse():
	return self.infosFalse
