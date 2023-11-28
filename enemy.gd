extends RigidBody2D

@onready var sprite: Sprite2D = get_node("NewPiskel(6)(1)")
@onready var anim: AnimationPlayer = get_node("AnimationPlayer")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.x >= self.position.x:
		anim.play("right")
		self.position.x += 2
	if Global.x <= self.position.x:
		self.position.x -= 2
		anim.play("left")
	if Global.y >= self.position.y:
		self.position.y += 2

		anim.play("up")
	if Global.y <= self.position.y:
		self.position.y -= 2
		anim.play("down")


func _on_body_entered(body):
	pass # Replace with function body.
