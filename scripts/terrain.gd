class_name Terrain
extends Spatial

var speed = 3


func _physics_process(delta):
	translation.z += speed * delta
