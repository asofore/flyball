extends Object

static func random(v):
	#var o=randi() % len(v)
	return v[randi() % len(v)]



# افتراض أن لدينا نموذج لسلوك الهبوط
#var previous_y: float = 0.0
#var previous_z: float = 0.0
'''
# دالة لتوقع z بناءً على y و السرعة
func predict_z(current_y: float, speed: float) -> float:
	var slope: float = (previous_z - current_z) / (previous_y - current_y)  # حساب الميل
	return current_z + slope * (current_y - previous_y) + speed * ADJUSTMENT_FACTOR

# استخدم هذه الوظيفة للتوقع
func _process(delta):
	var current_y: float = 8.0 # قيمة y الحالية
	var speed: float = 12.0      # السرعة
	var predicted_z: float = predict_z(current_y, speed)
	print("التوقع ل Z هو: ", predicted_z)

	# تحديث القيم السابقة
	previous_y = current_y
	previous_z = predicted_z
'''
