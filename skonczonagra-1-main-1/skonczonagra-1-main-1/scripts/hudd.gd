extends Control

@onready var score =$Score:
	set(value):
		score.text ="Wynik: " +str(value)
