extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	print(Mundo.tabletInfos)

func showPostIts():
	match len(Mundo.tabletInfos):
		0:
			return
		1:
			$Sprite/Postits/post1/sprite.visible = true
		
		2:
			$Sprite/Postits/post2/sprite.visible = true
			$Sprite/Postits/post2/linha.visible = true
			
func setText():
	for i in range (len(Mundo.tabletInfos)):
			match i:
				0:
					$Sprite/Postits/post1/text.set_text(Mundo.tabletInfos[i])
				
				1:
					$Sprite/Postits/post2/text.set_text(Mundo.tabletInfos[i])

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene("res://scr/Menus/MainMenu.tscn")
	showPostIts()
	setText()
