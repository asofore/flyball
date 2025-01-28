extends Node3D
@onready var control: Control = $Control

@onready var player = null
@onready var Player1 = preload("res://assets/Players/Crystal Ball.scn")
@onready var Player2 = preload("res://assets/Players/Frok Ball.scn")
@onready var Player3 = preload("res://assets/Players/Crystal Ball.scn")


func _on_play_pressed() -> void:
	match SaveGame.player:
		1:
			player = Player1
	
	var player_instance = player.instantiate()
	player_instance.global_transform.origin = Vector3(0, 4.5, 0)
	add_child(player_instance)
	control.queue_free()
