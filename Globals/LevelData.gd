extends Node
const LEVEL_DATA_PATH : String = "res://Data/level_data.json"

func _enter_tree() -> void:
	load_level_data()
	
func load_level_data() -> void:
	var file : FileAccess = FileAccess.open(LEVEL_DATA_PATH, FileAccess.READ)
	
	if !file:
		return
		
	var json_data: Dictionary = JSON.parse_string(file.get_as_text())
		
