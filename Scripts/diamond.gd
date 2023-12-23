extends Area2D

@onready var game_manager = %GameManager
@onready var player = $"../Player"

func _on_body_entered(body):
	if (body == player):
		queue_free()
		game_manager.add_points()
