extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	connect("area_entered", _on_area_entered)

func _on_area_entered(area: Area2D) -> void:	
	if area.name == "Ball":
		area.direction = Vector2(randf() * 2 - 1, Vector2.DOWN.y).normalized()
	
