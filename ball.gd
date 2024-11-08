extends Area2D

class_name Ball

@export var starting_speed := 500.0

var direction := Vector2.DOWN

@onready var _speed = starting_speed

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	_speed += delta * 2
	position += _speed * delta * direction
	
func scale_up() -> void:
	scale.x += .08
	_speed += 10
