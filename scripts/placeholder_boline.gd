class_name PlaceholderBoline
extends Spatial

var speed = 10.0
var move_vec = Vector3.ZERO


func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if Input.is_action_pressed("left"):
		move_vec.x = speed * delta
		if translation.x > 10: move_vec.x = 0
		translate(move_vec)

	if Input.is_action_pressed("right"):
		move_vec.x = -speed * delta
		if translation.x < -10: move_vec.x = 0
		translate(move_vec)

	if Input.is_action_just_pressed("snip"):
		$AnimationPlayer.play("SnipAnimation")
