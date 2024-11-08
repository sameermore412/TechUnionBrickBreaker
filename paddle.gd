extends Area2D

@export var move_speed := 500.0
@onready var _screen_size_x := get_viewport_rect().size.x

var has_power_up := true


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	connect("area_entered", _on_area_entered)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
		var input := Input.get_action_strength("Right") - Input.get_action_strength("Left")
		position.x = clamp( position.x + input * move_speed * delta, 30, _screen_size_x - 30)
		
func _on_area_entered(area: Area2D) -> void:
	if area.name == "Ball":
		area.direction = Vector2(randf() * 2 - 1, Vector2.UP.y).normalized()

	
