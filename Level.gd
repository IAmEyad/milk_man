extends Node2D

export(PackedScene) var Bodyguard_scene
export(PackedScene) var Milk_scene
var score

func _ready():
	randomize()


func _on_Milk_milk_collected():
	var guard = Bodyguard_scene.instance()
	var guard_spawn_location = get_node("EnemyPath/EnemySpawnLocation")
	guard_spawn_location.offset = randi()
	
	var direction = guard_spawn_location.rotation + PI / 2
	
	guard.position = guard_spawn_location.position
	
	direction += rand_range(-PI / 4, PI / 4)
	guard.rotation = direction
	
	var velocity = Vector2(rand_range(150.0, 250.0), 0.0)
	guard.linear_velocity = velocity.rotated(direction)
	
	# TODO://
	# Have guards chase you
	add_child(guard)
	
