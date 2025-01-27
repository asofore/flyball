extends Node3D
@onready var debris: GPUParticles3D = $GPUParticles3D
@onready var smoke: GPUParticles3D = $GPUParticles3D3
@onready var fire: GPUParticles3D = $GPUParticles3D2
@onready var expvoice: AudioStreamPlayer3D = $AudioStreamPlayer3D

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		explode()

func explode():
	debris.emitting = true
	smoke.emitting = true
	fire.emitting = true
	expvoice.play()
