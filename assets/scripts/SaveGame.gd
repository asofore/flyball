extends Node


const SAVE_FILE_PATH = "user://zetsumi.cfg"
@onready var Level = 1
@onready var mony = 0

func load_game_state():
	var config = ConfigFile.new()
	if config.load(SAVE_FILE_PATH) == OK:
		Level = config.get_value("SaveLEV", "LEV", Level)
		mony = config.get_value("SaveMON", "MON", mony)
 
func save_game_state():
	var config = ConfigFile.new()
	config.set_value("SaveLEV", "LEV", Level)
	config.set_value("SaveMON", "MON", mony)
