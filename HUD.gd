extends CanvasLayer

var milk_score = 0

onready var milk_label = $ScoreLabel
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	milk_label.set_text(str(milk_score))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_milk_collected():
	milk_score += 1
	_ready()
