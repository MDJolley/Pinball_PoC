extends Label

var playerScore = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	Player.score_updated.connect(_update_score)
	_update_score()

func _update_score():
	self.set_text("Score: " + str(Player.score))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
