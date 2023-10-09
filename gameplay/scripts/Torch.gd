extends StaticBody2D

signal activated
var active : bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func hit(body):
	$AnimatedSprite2D.set_frame(1)
	body.respawn()
	if not active:
		Player.add_points(100)
		active = true
		emit_signal("activated")

func _reset():
	$AnimatedSprite2D.set_frame(0)
	active = false
