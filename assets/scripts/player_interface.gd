extends Control
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var player_interface: Control = $"."

func _ready() -> void:
	animation_player.play("RESET")

func resume():
	get_tree().paused = false
	animation_player.play_backwards("blur")
	Input.mouse_mode = Input.MOUSE_MODE_HIDDEN
	player_interface.hide()

func pause():
	player_interface.show()
	get_tree().paused = true
	animation_player.play("blur")
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	

func _process(delta: float) -> void:
	testEsc()

func testEsc():
	if Input.is_action_just_pressed("esc") and get_tree().paused == false:
		pause()
	elif Input.is_action_just_pressed("esc") and get_tree().paused == true:
		resume()

func _on_resume_pressed() -> void:
	resume()


func _on_restart_pressed() -> void:
	
	resume()
	get_tree().reload_current_scene()
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	player_interface.hide()


func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://assets/scenes/mainscn.tscn")


func _on_vilage_pressed() -> void:
	get_tree().change_scene_to_file("res://assets/HomeLand/home.scn")
