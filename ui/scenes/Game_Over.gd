extends NinePatchRect

@onready var score = $MarginContainer/VBoxContainer/Score


# Called when the node enters the scene tree for the first time.
func _ready():
	score.set_text("Final score:  " + str(Player.score))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_retry_button_pressed():
	get_tree().change_scene_to_file("res://gameplay/map.tscn")

##TODO WHEN MENU SCENE IS MADE
func _on_menu_button_pressed():
	pass # Replace with function body.


func _on_quit_button_pressed():
	get_tree().quit()
