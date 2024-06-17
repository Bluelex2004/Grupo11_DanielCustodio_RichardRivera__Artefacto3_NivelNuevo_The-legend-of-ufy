extends RigidBody2D


var daño_recibido=false


# Velocidad deseada hacia la izquierda.
@export var left_velocity = Vector2(200, 0)

func _ready():
	
	# Desactivar la gravedad global para este objeto.
	gravity_scale = 0
	# Establecer la velocidad inicial hacia la izquierda.
	linear_velocity = left_velocity

func _integrate_forces(state):
	# Mantener la velocidad hacia la izquierda.
	linear_velocity = left_velocity

func _process(delta):
	if global_transform.origin.x > 1222:
		queue_free()
 

func _on_area_2d_body_entered(body):
	print("Bala chocó con: ",body)
	if body is BOSS:
		print("Le cayó")
		if not daño_recibido:
			print("Daño de Bala de Fuego recibido al BOSS")
			daño_recibido=true
			queue_free() 
	
