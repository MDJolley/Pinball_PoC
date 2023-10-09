extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func hit(body):
	if body.is_in_group("ball"):
		Player.change_lives(-1)
		body.respawn()
