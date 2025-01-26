extends Node3D

@onready var player=$"../../player/RigidBody3D"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	transform.origin=player.transform.origin
