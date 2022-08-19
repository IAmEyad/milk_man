extends Area2D
signal milk_collected

func _on_Milk_body_entered(body):
	emit_signal("milk_collected")
	print("Hit")
	#queue_free()
