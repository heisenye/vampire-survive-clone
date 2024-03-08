extends CanvasLayer

@export var arena_time_manager: Node
@onready var label = %Label

func _ready() -> void:
	var text = '5'
	print(text)


func _process(delta):
	if arena_time_manager == null:
		return
	var time_elapsed = arena_time_manager.get_time_elapsed()
	label.text = format_seconds_to_string(time_elapsed)


func format_seconds_to_string(seconds: float):
	var minutes = floor(seconds / 60)
	var remaining_seconds = floor(seconds - (minutes * 60))
#	return str(minutes) + ':' + str(remaining_seconds).pad_zeros(2)
#	return str(minutes) + ':' + "%02d" % remaining_seconds
	return "{0} : {1}".format([str(minutes), str(remaining_seconds).pad_zeros(2)])
	
