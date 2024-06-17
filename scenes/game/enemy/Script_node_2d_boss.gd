extends StaticBody2D
class_name BOSS
@onready var animation_player = $AnimationPlayer
const RIGID_BODY_2D_BOMBA = preload("res://scenes/game/levels/objects/Barco/rigid_body_2d_Bomba.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	animation_player.play("MoverBrazo")



func lanzarBOMBA1():
	var instanciarBomba=RIGID_BODY_2D_BOMBA.instantiate()
	instanciarBomba.position=$Fireball.position
	add_child(instanciarBomba)
func lanzarBOMBA2():
	var instanciarBomba=RIGID_BODY_2D_BOMBA.instantiate()
	instanciarBomba.position=$Fireball2.position
	add_child(instanciarBomba)
func lanzarBOMBA3():
	var instanciarBomba=RIGID_BODY_2D_BOMBA.instantiate()
	instanciarBomba.position=$Fireball3.position
	add_child(instanciarBomba)
func lanzarBOMBA4():
	var instanciarBomba=RIGID_BODY_2D_BOMBA.instantiate()
	instanciarBomba.position=$Fireball4.position
	add_child(instanciarBomba)
	
