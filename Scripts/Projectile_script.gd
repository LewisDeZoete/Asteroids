extends Area2D

var speed = 10000

func _ready():
	pass

func _physics_process(delta):
	position += transform.x * speed * delta

func _on_Projectile_body_entered(body):
	if body.is_in_group("enemy"):
		body.queue_free()
	queue_free()

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
