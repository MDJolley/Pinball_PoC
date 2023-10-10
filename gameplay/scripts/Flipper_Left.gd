extends RigidBody2D

var maxRotation = deg_to_rad(30)  # Adjust the maximum rotation angle
var minRotation = deg_to_rad(-15)
var flipperSpeed = 15  # Adjust the flipper's speed

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if Input.is_action_pressed("Left"):
		rotate_flipper(-1, delta)
	else:
		rotate_flipper(1, delta)

func rotate_flipper(direction, delta):
	var currentRotation = get_rotation()
	var newRotation = clamp(currentRotation + direction * flipperSpeed * delta, -maxRotation, -minRotation)
	set_rotation(newRotation)
