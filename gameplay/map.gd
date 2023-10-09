extends Node2D

@export var spawn_point : Vector2
var ball_path = preload("res://gameplay/scenes/Ball.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	spawn_ball()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func spawn_ball():
	print("ball spawning")
	var ball = ball_path.instantiate()
	ball.set_position(spawn_point)
	add_child(ball)
	move_child(ball, 0)
	
