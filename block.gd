extends Area2D


@onready var game_manager := self.get_node("/root/BrickBreaker/GameManager") as GameManager
@export var texture: Texture

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	connect("area_entered", _on_area_entered)
	$Sprite2D.texture  = texture
	

func _on_area_entered(area: Area2D) -> void:
	if area.name == "Ball":
		var ball := area as Ball
		ball.scale_up()
		area.direction = Vector2(randf() * 2 - 1, Vector2.DOWN.y).normalized()
		game_manager.increase_score()
		self.visible = false
		$AudioStreamPlayer2D.play()
		$AudioStreamPlayer2D.connect("finished", func(): 
			self.queue_free()
		)
