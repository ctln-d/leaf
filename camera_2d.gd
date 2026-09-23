extends Camera2D

@onready var player = get_parent()
var fixed_x: float
const camera_stop_y = 7800.0


# Called when the node enters the scene tree for the first time.
func _ready():
	fixed_x = global_position.x


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	global_position.x = fixed_x
	if player.global_position.y < camera_stop_y:
		global_position.y = player.global_position.y
	else:
		global_position.y = camera_stop_y
	
