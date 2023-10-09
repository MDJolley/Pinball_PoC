extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_collision(body):
	if body.is_in_group("ball"):
		body.queue_free()
		Player.change_lives(-1)
		get_parent().get_parent().spawn_ball()
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func hit(body):
	if body.is_in_group("ball"):
		body.queue_free()
		Player.change_lives(-1)
		get_parent().spawn_ball()

