extends Node2D

var playing = true

@export var spawn_point : Vector2
var ball_path = preload("res://gameplay/scenes/Ball.tscn")
var game_over_path = preload("res://ui/scenes/Game_Over.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	Player.reset_score()
	Player.reset_lives()
	spawn_ball()


## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	if !playing:
#		if Input.is_action_pressed("Restart"):
#			restart()

func spawn_ball():
	var ball = ball_path.instantiate()
	ball.set_position(spawn_point)
	add_child(ball)
	move_child(ball, 0)
	

func game_over():
	var game_over_window = game_over_path.instantiate()
	game_over_window.set_position(get_window().size/2)
	add_child(game_over_window)
	playing = false

#func restart():
#	self.get_node("GameOver").hide()
#	self.get_node("Torch_Group").reset_torches()
#	self.get_node("Torch_Group2").reset_torches()
#	Player.reset_score()
#	Player.reset_lives()
#	playing = true
#	spawn_ball()
