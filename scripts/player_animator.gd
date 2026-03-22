extends Node2D

@export var player_controller : controlPlayer
@export var player_animation : AnimationPlayer
@export var sprite : Sprite2D

func _process(_delta: float) -> void:
	if player_controller.direction == 1:
		sprite.flip_h = true
	elif player_controller.direction == -1:
		sprite.flip_h = false
	if abs(player_controller.velocity.x) > 0.0:
		player_animation. play("walk")
	else:
		player_animation.play("idle")
			
	if player_controller. velocity.y < 0.0:
		player_animation.play("jump")
	elif player_controller.velocity.y > 0.0:
		player_animation.play("falling")
