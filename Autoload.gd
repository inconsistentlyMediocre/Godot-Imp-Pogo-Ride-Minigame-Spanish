extends Node

var color
var combos 
var volumeClicks : int
var player : String = "Jugador"


func _ready():
	var apiKey = OS.get_environment("SILENT_WOLF_476")

	SilentWolf.configure({
	"api_key": apiKey,
	"game_id": "imppogoride12",
	"game_version": "1.0",
	"log_level": 1
	})

#	JavaScript.eval("""
#	let playerName;
#	window.addEventListener("message", (event) => {
#		if (event.origin !== "https://mspfa.com") return;
#
#		playerName = event.data
#		console.log('Player name is: ' + playerName)
#		}, false);
#	""", true)
#	if JavaScript.eval("typeof playerName !== 'undefined'", true):
#		Autoload.player = JavaScript.eval("playerName", true)

#func _process(_delta):
#	print(str(combos) + " autoload")
