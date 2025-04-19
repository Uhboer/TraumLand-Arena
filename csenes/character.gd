extends CharacterBody2D

# @onready var anim = $layouts/human

@onready var body = $layouts/body

var speed = 150

func _physics_process(delta):
	var direction = Input.get_vector("A", "D", "W", "S")
	if direction:
#		anim.play("Run")
		velocity = direction * speed
	else:
		velocity = Vector2(0, 0)
#		anim.play("Idle")
	if Input.is_action_just_pressed("A"):
		body.flip_h = true
	if Input.is_action_just_pressed("D"):
		body.flip_h = false


	move_and_slide()
