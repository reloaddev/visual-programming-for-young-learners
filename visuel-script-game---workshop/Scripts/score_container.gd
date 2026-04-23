extends PanelContainer

@onready var score: Label = $HBoxContainer/Value
@onready var high_score: Label = $HBoxContainer/HighScoreValue

func _on_timer_timeout() -> void:
	var current_score:int = int(score.text)  # Convert string to int
	current_score += 1  # Increment the score
	score.text = str(current_score)  # Convert int back to string

func _ready() -> void:
	load_game()


func _exit_tree() -> void:
	save_game()


func save_game():
	var save_file = FileAccess.open("user://savegame.save", FileAccess.WRITE)
	var save_data = save()
	var json_string = JSON.stringify(save_data)
	save_file.store_line(json_string)

func load_game():
	if not FileAccess.file_exists("user://savegame.save"):
		return # Error! We don't have a save to load.
	var save_file = FileAccess.open("user://savegame.save", FileAccess.READ)
	var json_string = save_file.get_line()
	# Creates the helper class to interact with JSON.
	var json = JSON.new()

	# Check if there is any error while parsing the JSON string, skip in case of failure.
	var parse_result = json.parse(json_string)
	if not parse_result == OK:
		print("JSON Parse Error: ", json.get_error_message(), " in ", json_string, " at line ", json.get_error_line())
		return
	# Get the data from the JSON object.
	var node_data = json.data
	high_score.text = str(node_data["HighScore"])
	


func save():
	var save_dict = {
		"HighScore": ReturnHighscore()
	} 
	return save_dict
	

func ReturnHighscore() -> int:
	var tempscore: int = 0
	if int(score.text) > int(high_score.text):
		tempscore = int(score.text)
	else :
		tempscore = int(high_score.text)
	return tempscore
	
	
