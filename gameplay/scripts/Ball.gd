extends RigidBody2D

var maxSpeed : int = 2000

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	pass

func _integrate_forces(state):
	if abs(get_linear_velocity().x) > maxSpeed or abs(get_linear_velocity().y) > maxSpeed:
		print(get_linear_velocity)
		var newSpeed = get_linear_velocity().normalized() * maxSpeed
		set_linear_velocity(newSpeed)
		

func _process(delta):
	pass

func _hit_something(body):
	if body.has_method("hit"):
		body.hit(self)
