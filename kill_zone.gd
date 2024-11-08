extends Area2D

@export var game_manager: GameManager

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	connect("area_entered", _on_area_entered)
	$Timer.timeout.connect(_end_game)

func _on_area_entered(area: Area2D) -> void:	
	if area.name == "Ball":
		$Timer.start(1)

func _end_game() -> void:
	game_manager.end_game()
