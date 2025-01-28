extends Node3D

@onready var ee=Node
@onready var area=$Area3D
@onready var help=preload('res://assets/scripts/help.gd')
var previous_opj = null

var ss=false


func rand_posd(li: float) -> Vector3:
	var random_x = randf_range(-15, 15)
	var random_y = randf_range(40, 90)
	var z_value = 85 - (li * 0.1)#- (random_y * 0.05) # التعديل على Z بناءً على سرعة الكرة
	return Vector3(random_x, random_y, z_value)




# Called when the node enters the scene tree for the first time.
func _ready():
	ee=get_tree().get_first_node_in_group('ball')
	#print(ee.linear_velocity)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass


func _on_area_3d_body_entered(body):
	ss=true
	if previous_opj:
		previous_opj.queue_free()
		
	var opj=preload("res://assets/scenes/while_floor.scn").instantiate()
	var tm=position.normalized()
	tm-=rand_posd(12.0)
	#tm.y-=100
	#tm.z-=85
	#tm.x=12
	opj.position=tm
	add_child(opj)
	previous_opj=opj
	
	
	
