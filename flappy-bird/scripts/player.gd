extends CharacterBody2D

@onready var player_timer: Timer = $Area2D/PlayerTimer

const JUMP: int = -1000
const MAX_SPEED: float = 400.0

var min_angle: float = deg_to_rad(60.0)
var max_angle: float = deg_to_rad(-30.0)

func _physics_process(delta: float) -> void:
	if GlobalData.is_game_over:
		return
	
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	if Input.is_action_just_pressed("jump"):
		velocity.y += JUMP
		velocity = velocity.limit_length(MAX_SPEED)
		rotation = max_angle
		#play sound when jump
		
		
	move_and_slide()

	if velocity.y > 350:
		rotation = min_angle
	elif velocity.y < 0:
		rotation = max_angle

func die():
	GlobalData.is_game_over = true
	player_timer.start()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Area2D:
		die()

func _on_player_timer_timeout() -> void:
	GlobalData.is_game_over = false
