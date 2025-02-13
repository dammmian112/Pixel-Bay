extends Node2D

@export var speed := 500.0

func _process(delta):
	position.y -= speed * delta
	if position.y < 0:
		queue_free()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("alien"):
		print("Bullet hit an alien!")
		body.queue_free()
		queue_free()
	else:
		print("Something else entered the area.")
