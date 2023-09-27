extends CharacterBody2D

var maxRotation = deg_to_rad(30)  # Adjust the maximum rotation angle
var flipperSpeed = 15  # Adjust the flipper's speed

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	# Detect input or other conditions to trigger the flipper movement
	if Input.is_action_pressed("Left"):
		rotate_flipper(-1, delta)
	else:
		rotate_flipper(1, delta)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var velocity = Vector2()

func rotate_flipper(direction, delta):
	var currentRotation = get_rotation()
	var newRotation = clamp(currentRotation + direction * flipperSpeed * delta, -maxRotation, deg_to_rad(30))
	set_rotation(newRotation)
