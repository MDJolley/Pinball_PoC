extends Node

var score_mod = 1
var score_life_requirement = 1000
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
	if(score > score_life_requirement * score_mod):
		score_mod += 1
		change_lives(1)
	emit_signal("score_updated")

func reset_score():
	score_mod = 1
	score = 0
	emit_signal("score_updated")
	
func change_lives(life):
	lives+=life
	emit_signal("lives_updated")

func reset_lives():
	lives = 3
	emit_signal("lives_updated")
