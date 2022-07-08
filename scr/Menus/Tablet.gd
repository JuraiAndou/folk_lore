extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	print(Mundo.tabletInfos)

func showPostIts():
	match len(Mundo.tabletInfos):
		0:
			return
		1:
			$Sprite/Postits/post1/Sprite.visible = true
		
		2:
			$Sprite/Postits/post2/Sprite.visible = true
			$Sprite/Postits/post2/Line.visible = true
			
		3:
			$Sprite/Postits/post3/Sprite.visible = true
			$Sprite/Postits/post3/Line.visible = true
		
		4:
			$Sprite/Postits/post4/Sprite.visible = true
			$Sprite/Postits/post4/Line.visible = true
		
		5:
			$Sprite/Postits/post5/Sprite.visible = true
			$Sprite/Postits/post5/Line.visible = true
		
		6:
			$Sprite/Postits/post6/Sprite.visible = true
			$Sprite/Postits/post6/Line.visible = true
		
func setText():
	for i in range (len(Mundo.tabletInfos)):
			match i:
				0:
					$Sprite/Postits/post1/text.set_text(Mundo.tabletInfos[i])
				
				1:
					$Sprite/Postits/post2/text.set_text(Mundo.tabletInfos[i])
					
				2:
					$Sprite/Postits/post3/text.set_text(Mundo.tabletInfos[i])
				
				3:
					$Sprite/Postits/post4/text.set_text(Mundo.tabletInfos[i])
				
				4:
					$Sprite/Postits/post5/text.set_text(Mundo.tabletInfos[i])
				
				5:
					$Sprite/Postits/post6/text.set_text(Mundo.tabletInfos[i])

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene("res://scr/Menus/MainMenu.tscn")
	showPostIts()
	setText()

#botão voltar
func _on_botao_voltar_mouse_exited():
	$botao_voltar/AnimatedSprite.play("idle")


func _on_botao_voltar_input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(1):
		$botao_voltar/AnimatedSprite.play("click")
		get_tree().change_scene("res://scr/Menus/MainMenu.tscn")


func _on_botao_voltar_mouse_entered():
	$botao_voltar/AnimatedSprite.play("hover")
