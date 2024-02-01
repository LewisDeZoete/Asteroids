extends CharacterBody2D

@export var max_speed = 10
@export var acc = 10
var player_position
var target_position
@onready var player = get_parent().get_node('PlayerCharacter')

func handle_hit():
	queue_free()

func _physics_process(delta):
	player_position = player.position
	target_position = (player_position - position).normalized()
	
	if position.distance_to(player_position) > 3:
		move_and_slide()
		velocity = velocity.move_toward(target_position*acc, max_speed) 
		#velocity += speed*target_position
