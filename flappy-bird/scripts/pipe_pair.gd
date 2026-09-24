extends Node2D

var speed: float = -130.0

func _process(delta: float) -> void:
	if GlobalData.is_game_over:
		return
	
	position.x += speed * delta
	
	if position.x < -200:
		queue_free()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		GlobalData.current_score += 1
		print(GlobalData.current_score)
