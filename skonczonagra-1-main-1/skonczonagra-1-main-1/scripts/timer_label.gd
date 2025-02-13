extends Label

# Zmienna przechowująca czas
var elapsed_time: float = 0.0

func _ready():
	# Ustaw początkowy tekst
	text = "00:00"

func _process(delta: float):
	# Dodaj czas od ostatniej klatki
	elapsed_time += delta
	# Zaktualizuj tekst wyświetlany na etykiecie
	text = format_time(elapsed_time)

# Funkcja formatująca czas w MM:SS
func format_time(seconds: float) -> String:
	var minutes = int(seconds) / 60
	var secs = int(seconds) % 60
	return "%02d:%02d" % [minutes, secs]
