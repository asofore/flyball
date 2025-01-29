extends Camera3D

var mouseSensibility = 4000#1200
var mouse_relative_x = 0
var mouse_relative_y = 0
var angle_h=0.0
var angle_v=0.0
var rtr=-0.002
var bod=6
var bob=0.1
var target:Node


var radius = 5.0  
var height_above_ground = 2.0


func _ready():
	target=get_node('../../player/RigidBody3D')
	
	Input.mouse_mode=Input.MOUSE_MODE_CAPTURED
	pass
	
func _input(event):
	#if event is InputEventMouseMotion:
	if event is InputEventMouseMotion:
		#d=rotation_degrees.x-event.relative.y *rtr
		#b=rotation_degrees.y- event.relative.x *rtr
		#rotation_degrees.x=clamp(rotation_degrees.x,-90,90)
		angle_h -=event.relative.x*rtr
		angle_v -=event.relative.y*rtr
		angle_v=clamp(angle_v,0.0,0.800)
		

func _process(delta):
	#var target=get_node('../../player3d')
	
	if target:
		var tarpos=target.global_transform.origin
		
		
		var off=Vector3(cos(angle_h)*bod,sin(angle_v)*8,sin(angle_h)*bod)
		
		
		global_transform.origin=tarpos+off
		
		#var ground_height = 0.0  # يمكن أن يكون قيمة ثابتة أو تعتمد على موقع اللاعب
		
		#var new_camera_y = max(global_transform.origin.y, ground_height + height_above_ground)
		
		#global_transform.origin.y = new_camera_y
		
		look_at(tarpos,Vector3.UP)
	#pass
		
		
		#rotation_degrees.x=d
		#rotation_degrees.y=b
		#rotation_degrees.x=clamp(rotation_degrees.x,-30,30)
		#var campos=global_transform.origin +Vector3()
		
		#global_transform.origin=campos
		#look_at(target.global_transform.origin,Vector3.UP)
		#global_transform.origin= target.global_transform.origin+Vector3(0, 5, 5)
		
		#look_at(target.global_transform.origin,global_transform.origin)
		#print(target.global_transform.origin,'ply')
		#print(global_transform.origin,'cam')
	
	
	
