extends TextureRect

@onready var goal_label = $MarginContainer/VBoxContainer/HBoxContainer/goal_label

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func _on_grid_game_over_signal(game_mode):
	if(game_mode):
		goal_label.text = "Perdiste por falta de tiempo"
	else:
		goal_label.text = "Perdiste: limite de movimientos"		


func _on_grid_win_game_signal():
	goal_label.text = "Has ganado crack!"
	
