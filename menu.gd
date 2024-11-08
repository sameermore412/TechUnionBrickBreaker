extends Control

class_name Menu

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	%RestartButton.connect("pressed", _on_restart_clicked)

func _on_restart_clicked() -> void:
	get_tree().reload_current_scene()
	
func show_win_label(time: float) -> void:
	%WinLabel.visible = true
	%WinLabel.text = "Nice!!! Completed In %d Seconds" % time
	
