extends Node2D

@export var enemy_scenes: Array[PackedScene] = []
@onready var laser_container = $LaserContainer
@onready var timer = $EnemySpawnTimer
@onready var enemy_container = $EnemyContainer
@onready var hud = $UILayer/HUD

var playerr = null
var score := 0:
	set(value):
		score = value
		hud.score = score

@export var initial_spawn_interval: float = 2.0  # Początkowy czas między spawnami
@export var min_spawn_interval: float = 0.5     # Minimalny czas między spawnami
@export var spawn_acceleration: float = 0.95    # Współczynnik przyspieszenia (mniejszy niż 1)

func _ready():
	score = 0
	hud.score = 0
	playerr = get_tree().get_first_node_in_group("playerr")
	playerr.laser_shot.connect(_on_player_laser_shot)

	# Ustawiamy początkowy czas timera
	timer.wait_time = initial_spawn_interval
	timer.start()

func _on_player_laser_shot(laser_scene, location):
	var laser = laser_scene.instantiate()
	laser.global_position = location
	laser_container.add_child(laser)

func _on_enemy_spawn_timer_timeout():
	var e = enemy_scenes.pick_random().instantiate()
	e.global_position = Vector2(randf_range(50, 1000), -50)
	e.killed.connect(_on_enemy_killed)
	enemy_container.add_child(e)

	# Przyspieszenie spawnowania przeciwników
	if timer.wait_time > min_spawn_interval:
		timer.wait_time = max(timer.wait_time * spawn_acceleration, min_spawn_interval)
		print("Nowy czas spawnu:", timer.wait_time)

func _on_enemy_killed(points):
	score += points
	print(score)
