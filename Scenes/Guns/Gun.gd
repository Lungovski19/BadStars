extends Node2D

export var Bullet:PackedScene

func _ready():
	pass
	
remotesync func shoot():
	
	var b = Bullet.instance()
	b.global_rotation = global_rotation
	b.global_position = $Muzzle.global_position
	get_tree().root.get_child(get_tree().root.get_child_count()-1).add_child(b)
	
	pass
