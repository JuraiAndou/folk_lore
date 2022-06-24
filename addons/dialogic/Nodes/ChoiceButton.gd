extends Button

func _process(delta):
	if Input.is_action_pressed(get_meta('input_next')):
		if has_focus():
			emit_signal("button_down")
	if Input.is_action_just_released(get_meta('input_next')):
		if has_focus():
			emit_signal("button_up")
			emit_signal("pressed")
			

func setText(text):
	$Label.set_text(text)
	
