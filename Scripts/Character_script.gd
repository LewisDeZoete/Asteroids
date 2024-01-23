extends CharacterBody2D

@export var ACC = 1
@export var rotation_speed = 5
@export var MAX = 20
@export var DROP = 50

const Projectile = preload("res://Scenes/Projectile.tscn")

# speed variable used to multiply the velocity
# in the main loop, it's clamped
var speed = 0
var rotation_direction = 0

func shoot():
	var p = Projectile.instantiate()
	owner.add_child(p)
	p.transform = $Muzzle.global_transform
	p.scale = Vector2(0.2, 0.2)


func get_input():
	'''
	doc string
	'''
	var drive = Input.is_action_pressed("ui_U")
	var actn_shoot = Input.is_action_just_pressed("ui_accept")
	if actn_shoot:
		shoot()
	
	# "ui_L/R" are defined as "a" and "d", we use these to change rotation directn
	rotation_direction = Input.get_axis("ui_L", "ui_R")
	
	# if the player is pressing the drive key...
	if drive:
		speed += ACC # increase the speed variable
	else:
		speed -= DROP # otherwise, drop the speed vector back to zero
		velocity = velocity.move_toward(Vector2.ZERO, DROP) 


func _physics_process(delta):
	get_input()
	# we change the rotation based on the rotation directn value in `get_input()` 
	rotation += rotation_direction * rotation_speed * delta
	# clamp speed to range (0,MAX)
	speed = clamp(speed, 0, MAX)
	velocity += transform.x * speed / 3
	move_and_slide()
