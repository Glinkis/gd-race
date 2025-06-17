extends Node

var camera = Camera3D.new()
var light = DirectionalLight3D.new()
var sphere1 = MeshInstance3D.new()
var sphere2 = MeshInstance3D.new()


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Set up the camera
	camera.projection = Camera3D.PROJECTION_ORTHOGONAL
	camera.position = Vector3(0, 0, 10)
	camera.size = 2
	add_child(camera)

	# Set up the light
	light.light_color = Color(1, 1, 1)
	add_child(light)

	# Set up the sphere1
	sphere1.mesh = SphereMesh.new()
	sphere2.mesh = SphereMesh.new()
	
	add_child(sphere1)
	add_child(sphere2)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	# get a value between -1 and 1 that changes over time
	var delta_pos = Time.get_ticks_msec() / 500.0
	## add a sphere1 that moves in a circle around the origin
	sphere1.position = Vector3(cos(delta_pos), sin(delta_pos), 0)
	sphere2.position = Vector3(cos(delta_pos), cos(delta_pos), sin(delta_pos))
	pass
