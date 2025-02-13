extends Control

@onready var wynik: Label = %Label2  # Zakładam, że Label2 to label w tej scenie

func _ready():
	# Wyświetlamy wynik z GameData
	wynik.text = "Twój wynik: " + str(GameData.score)

func _on_wyjdz_pressed() -> void:
	get_tree().quit()

func _on_restart_pressed() -> void:
	GameData.reset()  # Reset wyniku
	get_tree().change_scene_to_file("res://scenes/space_invaders.tscn")


func _on_powrot_do_menu_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menuSpaceInvaders.tscn")
