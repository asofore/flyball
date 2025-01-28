extends RigidBody3D

# المتغيرات التي تتحكم في السرعة والقفز
@export var move_speed : float = 5.0
@export var jump_force : float = 10.0
@export var gravity : float = 4
@onready var camera_3d: Camera3D = $"../../camera/Camera3D"

# متغيرات للتحقق من الأرض
var is_on_ground : bool = false


# دالة التحديث لكل إطار
func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed('ui_accept'):
		linear_velocity.y=6
	var input_vector = Vector3.ZERO
	if Input.is_action_pressed("ui_right"):
		input_vector.x += 1
	if Input.is_action_pressed("ui_left"):
		input_vector.x -= 1
	if Input.is_action_pressed("ui_down"):
		input_vector.z -= 1
	if Input.is_action_pressed("ui_up"):
		input_vector.z += 1
		
	

	input_vector = input_vector.normalized()
	var camera_transform = camera_3d.global_transform
	var forward_direction = -camera_transform.basis.z  # اتجاه الكاميرا للأمام
	var right_direction = camera_transform.basis.x  # اتجاه الكاميرا لليمين
	var movement = forward_direction * input_vector.z + right_direction * input_vector.x
	movement = movement.normalized()
	linear_velocity.x = movement.x * move_speed
	linear_velocity.z = movement.z * move_speed
	if not is_on_ground:
		linear_velocity.y -= gravity * delta
	if Input.is_action_just_pressed("ui_accept") and is_on_ground:
		linear_velocity.y = jump_force
