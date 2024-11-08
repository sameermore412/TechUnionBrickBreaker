extends Node2D
class_name GameManager

@onready var score := 0
@onready var time_start = Time.get_unix_time_from_system()
@onready var time_now = time_start
@export var time_label: RichTextLabel
@export var menu: Menu

func _ready() -> void:
	menu.visible = false
	get_tree().paused = false

func _process(delta: float) -> void:
	time_now = Time.get_unix_time_from_system() - time_start
	time_label.text = "Time: %d Seconds" % time_now
	
func increase_score() -> void:
	score += 1
	if score >= 63:
		end_game(true)
	
func end_game(did_win: bool = false) -> void:
	if did_win:
		menu.show_win_label(time_now)
	menu.visible = true
	get_tree().paused = true
	
