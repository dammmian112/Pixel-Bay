extends Node

@onready var label: Label = %Label  # Załóżmy, że masz Label na scenie GameManager

# Funkcja, która jest wywoływana przy załadowaniu sceny
func _ready():
	GameData.reset()  # Resetujemy dane przed rozpoczęciem nowego poziomu

# Funkcja dodająca punkty po zebraniu monety
func add_point():
	var coin_sound = AudioStreamPlayer.new()
	coin_sound.stream = load("res://assets/spirites/sounds/coin.mp3")
	add_child(coin_sound)
	coin_sound.play()
	
	GameData.score += 1  # Zwiększamy liczbę punktów w GameData
	print(GameData.score)
	
	label.text = "Monety: " + str(GameData.score) + "/9"
	zakoncz_poziom()

# Funkcja kończąca poziom, gdy gracz zbierze wszystkie monety
func zakoncz_poziom():
	if GameData.score == GameData.max_coins:
		get_tree().change_scene_to_file("res://scenes/koniec_poziomu.tscn")  # Zmieniamy scenę na koniec poziomu
