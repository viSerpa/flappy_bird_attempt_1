extends Node2D

@onready var game_over: Sprite2D = $CanvasLayer/GameOver
@onready var player: CharacterBody2D = $Player
@onready var message: Sprite2D = $CanvasLayer/Message
@onready var score_label: Label = $CanvasLayer/ScoreLabel

func on_player_death() -> void:
	if GlobalData.is_game_over:
		game_over.visible = true
		get_tree().paused = true
		game_over.position.x = 145.0
		game_over.position.y = 45.0

	#show "click to start" ui
	#show "game over" on death

	#have player press "jump" to start over
	# and to start the game

#scoring a point
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		GlobalData.current_score += 1
		score_label.add_point()
		print(GlobalData.current_score)
