class_name Player
extends Spatial

var speed = 10.0
var edge = 4.8
var move_vec = Vector3.ZERO


func _physics_process(delta):
	if Input.is_action_pressed("left"):
		move_vec.x = -speed * delta
		if translation.x < -edge: move_vec.x = 0
		translate(move_vec)

	if Input.is_action_pressed("right"):
		move_vec.x = speed * delta
		if translation.x > edge: move_vec.x = 0
		translate(move_vec)

	if Input.is_action_just_pressed("snip"):
		$Boline/AnimationPlayer.play("bolineAction")
