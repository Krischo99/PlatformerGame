extends Node

@onready var diamond_points = %"Diamond Points"
@onready var final = $"../Final"
@onready var collision_shape_2d = $"../Final/CollisionShape2D"
@onready var animation_player = $"../AnimationPlayer"
@onready var found: bool = false

var points = 0

func _ready():
	collision_shape_2d.disabled = true
	

func add_points():
	points += 1
	diamond_points.text = "Diamonds: " + str(points)
	

func _process(delta):
	if points >= 6:
		play()
		

func play():
	if !found:
		final.visible = true
		collision_shape_2d.disabled = false
		animation_player.play("final.show")
		found = true
		
