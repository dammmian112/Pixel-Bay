extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_jesien_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game_2.tscn")


func _on_lato_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game_3.tscn")


func _on_zima_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game_4.tscn")


func _on_wiosn_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn")


func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Glownemenu.tscn")

func _on_exit_pressed() -> void:
	get_tree().quit()
