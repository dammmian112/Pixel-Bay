extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_wegorz_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menuwegorz.tscn")


func _on_nostalgic_jump_1_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")


func _on_star_siege_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menuSpaceInvaders.tscn")


func _on_wegorz_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menuwegorz.tscn")


func _on_wyjscie_b_pressed() -> void:
	get_tree().quit()
