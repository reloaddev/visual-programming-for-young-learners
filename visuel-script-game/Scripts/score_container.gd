extends PanelContainer

@onready var score: Label = $HBoxContainer/Value


func _on_timer_timeout() -> void:
	var current_score:int = int(score.text)  # Convert string to int
	current_score += 1  # Increment the score
	score.text = str(current_score)  # Convert int back to string
