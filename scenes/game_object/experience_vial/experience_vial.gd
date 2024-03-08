extends Node2D


func _ready():
	pass # Replace with function body.


func _on_area_2d_area_entered(area):
	queue_free()
