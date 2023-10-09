extends RigidBody2D

var maxRotation = deg_to_rad(30)  # Adjust the maximum rotation angle
var flipperSpeed = 15  # Adjust the flipper's speed

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
		# Detect input or other conditions to trigger the flipper movement
	if Input.is_action_pressed("Right"):
		rotate_flipper(1, delta)
	else:
		rotate_flipper(-1, delta)


func rotate_flipper(direction, delta):
	var currentRotation = get_rotation()
	var newRotation = clamp(currentRotation + direction * flipperSpeed * delta, deg_to_rad(0), maxRotation)
	set_rotation(newRotation)
