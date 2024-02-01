extends Area2D

var speed = 10000

func _ready():
	pass

func _physics_process(delta):
	position += transform.x * speed * delta

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()

func _on_body_entered(body: Node) -> void:
	# if we've implemented the "handle_hit" method on coliding body
	if body.has_method("handle_hit"):
		body.handle_hit() # allow the body to handle hit
		queue_free() # destroy bullet
