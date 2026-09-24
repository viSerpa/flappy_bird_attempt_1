extends Area2D

@onready var pipe_2_timer: Timer = $Pipe2Timer

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		print("YOU DIED")
		GlobalData.is_game_over = true
		pipe_2_timer.start()

func _on_pipe_2_timer_timeout() -> void:
	GlobalData.is_game_over = false
