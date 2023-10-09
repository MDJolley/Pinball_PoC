extends Label

# Called when the node enters the scene tree for the first time.
func _ready():
	Player.lives_updated.connect(_update_lives)
	_update_lives()

func _update_lives():
	self.set_text("Lives: " + str(Player.lives))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
