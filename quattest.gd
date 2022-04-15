extends Node3D

@onready var sword = $Sword

var q1 = Quaternion(0.396, -0.555, 0.518, 0.517)
var q2 = Quaternion(-0.341, 0.597, -0.643, 0.338)

func set_rotation(f):
	var q = q1.slerp(q2, f)
	sword.transform.basis = Basis(q)

func _ready():
	sword.transform.basis = Basis(q1)
	var t = create_tween()
	t.tween_interval(3)
	t.tween_method(set_rotation, 0.0, 1.0, 3)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
