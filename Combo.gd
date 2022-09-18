extends Node2D

var combos := ["¡COMBO!", "¡WOW!", "¡OH DIANTRES!", "¡ASOMBROSO!", "¡¿QUEEÉ?!", "¡BIEN!", "ENFERMIZO", "ESTÁ DE LOCOS", "DELIRANTE", "OH NO LO HIZO", "DIABLOS HIJO", "BASTANTE BIEN", "IN-JODIDAMENTE-CREIBLE"]
var color : Color = Color(randf(), randf(), randf(), 1.0)


func _ready():
	$Combo.text = combos[randi() % combos.size()]
	$Combo.set("custom_colors/font_color", color)

func _process(_delta):
	if Autoload.combos > 50:
		$Combo.set("custom_colors/font_color", Color(randf(), randf(), randf(), 1.0))
