extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func game_over():
	self.set_text(self.text + str(Player.score))
	self.show()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
