extends Control

func _ready():
	var python_death = AudioStreamPlayer.new()
	python_death.stream = load("res://assets/spirites/sounds/pythondead.mp3")
	add_child(python_death)
	python_death.play()

func _on_restart_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game_wegorz.tscn")


func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menuwegorz.tscn")


func _on_wyjscie_pressed() -> void:
	get_tree().quit()
