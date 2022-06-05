extends CharacterBody2D

var movement = Vector2.ZERO
var playerVelocity = Vector2.ZERO

var speed := 600
# Called when the node enters the scene tree for the first time.
func _ready():
	print("Player is Ready")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("move_right"):
		movement += Vector2.RIGHT
	if Input.is_action_pressed("move_left"):
		movement += Vector2.LEFT
	if Input.is_action_pressed("move_up"):
		movement += Vector2.UP
	if Input.is_action_pressed("move_down"):
		movement += Vector2.DOWN
	
	print(movement.normalized())
	velocity = movement * speed * delta
	move_and_slide()



