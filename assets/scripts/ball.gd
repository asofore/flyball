extends RigidBody3D

@export var speed=-12.0
@export var speed_x=4
@export var speed_anguler=5
@export var jump=6
@onready var help=preload("res://assets/scripts/help.gd")
@onready var area=$area
@onready var ray=$"../../ray/raycast"
@onready var Health = 2




func _ready():
	match SaveGame.player:
		1:
			Health += 0
		2:
			Health += 2

	pass

func _input(event):
	
	if Input.is_action_just_pressed('ui_accept') and ray.is_colliding():
		linear_velocity.y=jump


func _physics_process(delta):
	
	linear_velocity.x=0
	#linear_velocity.z=0
	
	var dir=Input.get_axis('ui_left','ui_right')
	if dir:
		linear_velocity.x=speed_x*dir
	
	#move_and_collide(to_run)
	linear_velocity.z=speed
	
	
	
