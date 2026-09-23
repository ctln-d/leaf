extends Node
@onready var score_label = $Label2
@onready var acorns: Node2D = $Acorns

var score = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for acorn in acorns.get_children():
		acorn.body_entered.connect(_on_acorn_body_entered.bind(acorn))
	score_label.text = str(score)


func _on_acorn_body_entered(body, acorn) -> void:
	if body is CharacterBody2D:
		score += 1
		score_label.text = str(score)
		acorn.hide()
		acorn.set_deferred("monitoring", false)
