extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_graj_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/space_invaders.tscn")


func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Glownemenu.tscn")



func _on_exxit_pressed() -> void:
	get_tree().quit()
