extends Area2D

# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	connect("area_entered", _on_area_entered)

func _on_area_entered(area: Area2D) -> void:	
	if area.name == "Ball":
		var current_ball_direction = area.direction
		
		if name == "TopWall":
			area.direction = Vector2(randf() * 2 - 1, Vector2.DOWN.y).normalized()
		else:
			if area.direction.x > 0 and area.position.x > 0 or area.direction.x < 0 and area.position.x < 500:
				area.direction.x = -area.direction.x
			
	
