extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.y -= -3
	
	if self.position.y > 300:
		self.position.y = 300
	
func area_entered(otherArea):
	if otherArea.name == "ProjectileArea":
		go.destroy(self)
		
		global.score += 10
		
func _on_IncomerShootTimer_timeout():
		go.spawn_instance("projectile2", self.position.x, self.position.y)

		pass

