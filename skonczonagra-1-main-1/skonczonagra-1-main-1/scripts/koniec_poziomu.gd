extends Control
# Funkcja wywoływana przy naciśnięciu przycisku wyjścia
func _on_wyjdz_pressed() -> void:
	get_tree().quit()  # Zakończenie gry


func _on_powrot_do_menu_pressed() -> void:
		GameData.reset()  # Resetujemy wynik
		get_tree().change_scene_to_file("res://scenes/menu.tscn")  # Zmieniamy scenę na menu
