extends Node2D

@export var speed := 400.0
var bullet_scene = preload("res://scenes/bullet.tscn")

func _process(delta):
	var direction = Vector2.ZERO
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_just_pressed("ui_accept"):
		shoot()
		
	position += direction * speed * delta

func shoot():
	var bullet = bullet_scene.instantiate()
	bullet.position = position
	get_parent().add_child(bullet)
