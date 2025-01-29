extends CanvasLayer


func _on_speed_time_pressed() -> void:
	if Engine.time_scale <= 5:
		Engine.time_scale += 0.1


func _on_speed_time_2_pressed() -> void:
	if Engine.time_scale >= 0:
		Engine.time_scale -= 0.1


func _on_restart_pressed() -> void:
	get_tree().paused = false


func _on_menu_pressed() -> void:
	get_tree().paused = false
