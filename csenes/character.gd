extends CharacterBody2D

var speed = 200  

func _physics_process(delta):
	var direction = Input.get_vector("A", "D", "W", "S")
	velocity = direction * speed

	move_and_slide()
