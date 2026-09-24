extends Node2D

@onready var pipe_1_timer: Timer = $Pipe1Timer

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		print("YOU DIED")
		GlobalData.is_game_over = true
		pipe_1_timer.start()

func _on_pipe_1_timer_timeout() -> void:
	GlobalData.is_game_over = false
