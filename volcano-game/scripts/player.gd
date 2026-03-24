extends CharacterBody2D

var speed: int = 100

func _physics_process(delta: float) -> void:
	movement_loop()

func movement_loop() -> void:
	if Input.is_action_pressed("run"):
		speed = 130
	else:
		speed = 100
	
	var move_direction = Input.get_vector("moveLeft", "moveRight", "moveUp", "moveDown")
	velocity.y = move_direction.y * speed * 0.5
	velocity.x = move_direction.x * speed
	move_and_slide()
