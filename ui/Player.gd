extends Node

var score = 0
var lives = 3
signal score_updated
signal lives_updated

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func add_points(points):
	score+=points
	emit_signal("score_updated")

func change_lives(life):
	print("lost life")
	lives+=life
	emit_signal("lives_updated")
