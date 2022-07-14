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
var tempoMusicaMenu = 0.0

#inicialização do jogo
func _ready():
	DataManagement.loadData()
	dia = DataManagement.dataDictionary["Mundo"]["dia"]
	listaSuspeitos = DataManagement.dataDictionary["Mundo"]["suspeitos"]
	interrogatorios = DataManagement.dataDictionary["Mundo"]["interrogatorio"]
	AudioServer.set_bus_mute(Mundo.music_bus, DataManagement.dataDictionary["Mundo"]["Audio"])
	OS.window_fullscreen = DataManagement.dataDictionary["Mundo"]["fullscreen"]
	
func playSong(som):
	match som:
		"Menu":
			if $Sons/intro.is_playing():
				$Sons/intro.stop()

			if $Sons/menu.is_playing():
				return
			else:
				$Sons/menu.play(Mundo.tempoMusicaMenu)

		"Intro":
			if $Sons/menu.is_playing():
				$Sons/menu.stop()

			if $Sons/intro.is_playing():
				return
			else:
				$Sons/intro.play()

		"Interroga":
			$Sons/menu.stop()
			$Sons/intro.stop()
			
		"openFicha":
			if $Sons/ficha.is_playing():
				return
			else:
				$Sons/ficha.play()
			
		"openCalender":
			if $Sons/calender.is_playing():
				return
			else:
				$Sons/calender.play()
				
		"openDisp":
			if $Sons/disp.is_playing():
				return
			else:
				$Sons/disp.play()

func _on_menu_tree_exiting():
	Mundo.tempoMusicaMenu = $Sons/menu.get_playback_position()
	print(Mundo.tempoMusicaMenu)
