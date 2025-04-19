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
	move_and_slide()
