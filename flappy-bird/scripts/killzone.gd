extends Area2D

@onready var global_timer: Timer = $"../GlobalTimer"

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		GlobalData.is_game_over = true
		print("you died")
		global_timer.start()
	#play sound on death

func _on_global_timer_timeout() -> void:
	get_tree().reload_current_scene()
	GlobalData.is_game_over = false
