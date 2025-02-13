extends Node

var score: int = 0  # Liczba punktów
var max_coins: int = 9  # Liczba monet w grze
var final_score: int = 0  # Wynik końcowy gracza space invaders
var death_count: int = 0  # Licznik śmierci

# Funkcja resetująca dane
func reset():
	score = 0  # Resetujemy wynik
	
func resetdeaths():
	death_count = 0  # Resetujemy licznik śmierci

# Funkcja zapisująca wynik końcowy
func save_final_score():
	final_score = score
	
func reset_spaceInvaders():
	final_score = 0
