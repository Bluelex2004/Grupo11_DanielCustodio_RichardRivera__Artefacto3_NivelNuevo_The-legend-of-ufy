extends RigidBody2D

@onready var animation_player = $AnimationPlayer
var daño_recibido=false


# Velocidad deseada hacia la izquierda.
@export var left_velocity = Vector2(-200, 0)

func _ready():
	animation_player.play("MovimientoBomvba")  
	# Desactivar la gravedad global para este objeto.
	gravity_scale = 0
	# Establecer la velocidad inicial hacia la izquierda.
	linear_velocity = left_velocity

func _integrate_forces(state):
	# Mantener la velocidad hacia la izquierda.
	linear_velocity = left_velocity

func _process(delta):
	if global_transform.origin.x < -122:
		queue_free()
 

func _on_area_2d_body_entered(body):
	print("Bala chocó con: ",body)
	if body is Prota:		
		if not daño_recibido:
			print("Daño de Bala de Fuego recibido al prota")
			daño_recibido=true
			queue_free() 
