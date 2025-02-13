extends Control

@onready var label: Label = %ZebraneMonety  # Załóżmy, że masz Label2 na scenie końca poziomu
@onready var label_licznik_smierci: Label = %LicznikSmierci  # Label, który będzie wyświetlał liczbę śmierci



# Funkcja wywoływana przy naciśnięciu przycisku powrotu do menu
func _on_powrot_do_menu_2_pressed() -> void:
	GameData.reset()  # Resetujemy wynik
	GameData.resetdeaths()
	get_tree().change_scene_to_file("res://scenes/menu.tscn")  # Zmieniamy scenę na menu

# Funkcja wywoływana przy naciśnięciu przycisku wyjścia
func _on_wyjdz_pressed() -> void:
	get_tree().quit()  # Zakończenie gry

# Ustawiamy wynik po załadowaniu sceny końca poziomu
func _ready():
	label.text = "     " + str(GameData.score) + "/" + str(GameData.max_coins)
	label_licznik_smierci.text = "      " + str(GameData.death_count)  # Wyświetlamy liczbę śmierci


func _on_restart_pressed() -> void:
	GameData.reset()  # Resetujemy wynik
	get_tree().change_scene_to_file("res://scenes/game.tscn")  # Zmieniamy scenę na grę
