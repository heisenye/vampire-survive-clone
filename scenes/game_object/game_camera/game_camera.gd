extends Camera2D

var target_position: Vector2 = Vector2.ZERO


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
#	make_current()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	acqure_target()
	global_position = global_position.lerp(target_position, 1.0 - exp(-delta * 20))


func acqure_target():
	var player_nodes: Array[Node] = get_tree().get_nodes_in_group('player')
	if player_nodes.size() > 0:
		var player: Node2D = player_nodes[0]
		target_position = player.global_position
