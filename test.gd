extends Node2D
class_name Test


# Called when the node enters the scene tree for the first time.
func _ready():
	var age = 123
	print('%0-5d' % 2, 2)
	
	print("{id}".format({'id': 2}))
	
	print("{0}".format([age]))
	
	var message = 'Hello, my name is %s, my age is %d' % [name, 20]
	
	var msg = 'Hello, my name is {0}, my age is {1}'.format([name, age])
	
	print(msg)
	
	print(1, "%2d" % 200, 5)
	
	var a = "1"
	
	print(a.pad_zeros(2))
	
	print(a.pad_decimals(2))
	
	
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
