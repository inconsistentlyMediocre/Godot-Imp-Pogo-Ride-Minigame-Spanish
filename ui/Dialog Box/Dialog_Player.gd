extends Control

onready var animPlayer = get_node("CenterContainer/Body_NinePatchRect/AnimationPlayer")
onready var rootNode = get_node(".")


func _on_DialogBox_gui_input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.is_pressed():
			animPlayer.play_backwards("Open")
			yield(get_tree().create_timer(0.17), "timeout")
			rootNode.visible = false
