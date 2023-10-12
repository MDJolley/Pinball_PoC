extends Node2D

var playing = true

@export var spawn_point : Vector2
var ball_path = preload("res://gameplay/scenes/Ball.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	spawn_ball()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if !playing:
		if Input.is_action_pressed("Restart"):
			restart()

func spawn_ball():
	var ball = ball_path.instantiate()
	ball.set_position(spawn_point)
	add_child(ball)
	move_child(ball, 0)
	

func game_over():
	self.get_node("GameOver").game_over()
	playing = false

func restart():
	self.get_node("GameOver").hide()
	self.get_node("Torch_Group").reset_torches()
	self.get_node("Torch_Group2").reset_torches()
	Player.reset_score()
	Player.reset_lives()
	playing = true
	spawn_ball()
