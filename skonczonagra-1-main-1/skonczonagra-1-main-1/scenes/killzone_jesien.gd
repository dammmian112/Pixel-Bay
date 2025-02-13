extends Area2D

@onready var timer: Timer = $Timer
@onready var health_manager: Node = $"../HealthManager"  # Ścieżka do menedżera zdrowia

func _on_body_entered(body: Node2D) -> void:
	print("nie zyjesz")
	# Zwiększ licznik śmierci
	GameData.death_count += 1

	# Tworzenie i konfiguracja AudioStreamPlayer
	var death_sound = AudioStreamPlayer.new()
	death_sound.stream = load("res://assets/spirites/sounds/death.mp3")  # Zmień ścieżkę na swoją
	
	# Dodajemy odtwarzacz do sceny i odtwarzamy dźwięk
	add_child(death_sound)
	death_sound.play()
	timer.start()
	

func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://scenes/hud_smierc_jesien.tscn")
