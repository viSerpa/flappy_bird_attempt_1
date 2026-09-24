extends Node2D

const PIPE_1 = preload("res://scenes/pipe_1.tscn")
const PIPE_2 = preload("res://scenes/pipe_2.tscn")

var pipe_1_min_height = 400.0
var pipe_1_max_height = 500.0

var pipe_2_min_height = 00.0
var pipe_2_max_height = 00.0

func _on_timer_timeout() -> void:
	var new_pipe1 = PIPE_1.instantiate()
	var new_pipe2 = PIPE_2.instantiate()
	
	new_pipe1.position = global_position
	new_pipe2.position = global_position
	
	var random_offset1 = randf_range(pipe_1_max_height, pipe_1_min_height)
	new_pipe1.position.y =  ceil(random_offset1)
	
	var random_offset2 = randf_range(pipe_2_max_height, pipe_2_min_height)
	new_pipe2.position.y = ceil(random_offset2)
	
	get_tree().current_scene.add_child(new_pipe1)
	get_tree().current_scene.add_child(new_pipe2)
