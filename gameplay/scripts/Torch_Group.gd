extends Node2D

@onready var torches = get_children()
var activeTorches : int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	for torch in torches:
#		torch.connect()
		torch.activated.connect(_torch_activated)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _torch_activated():
	activeTorches += 1
	if activeTorches == torches.size():
		_all_torches_active()

func _all_torches_active():
	await get_tree().create_timer(3.0).timeout
	Player.add_points(1000)
	activeTorches = 0
	for torch in torches:
		torch._reset()
