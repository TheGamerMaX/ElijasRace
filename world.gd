extends Node2D

onready var loadingbar = $UI/LoadingScreen
var level_thread = Thread.new()
var load_percent = 0

func _ready():
	load_game()

func load_game():
	level_thread.start(self, "build_level", null , 1)
