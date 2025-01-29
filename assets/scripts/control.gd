extends Control
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var animation_player: AnimationPlayer = $MeshInstance3D/AnimationPlayer
@onready var animation_player2: AnimationPlayer = $"Ball Show/AnimationPlayer"

func _ready() -> void:
	Engine.time_scale == 1
	audio_stream_player_2d.play()
	animation_player.play("CylinderAction")
	animation_player2.play("Show")
func _on_exit_pressed():
	get_tree().quit()


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("k")
