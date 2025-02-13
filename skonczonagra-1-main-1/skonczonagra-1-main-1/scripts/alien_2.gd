extends Node2D

@export var speed := 100.0
var boundary_x = 1000  # Ustal granicę, po której się odbiją

func _ready():
	add_to_group("alien")

func _process(delta):
	position.x += speed * delta
	
	# Jeśli obcy osiągnie granicę ekranu, zmienia kierunek i przesuwa się w dół
	if position.x > boundary_x or position.x < 0:
		speed = -speed  # Zmień kierunek ruchu
		position.y += 20  # Przesuń w dół po odbiciu

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("bullet"):
		print("Alien hit by bullet!")
		queue_free()
		body.queue_free()
	else:
		print("Something else entered the area.")
