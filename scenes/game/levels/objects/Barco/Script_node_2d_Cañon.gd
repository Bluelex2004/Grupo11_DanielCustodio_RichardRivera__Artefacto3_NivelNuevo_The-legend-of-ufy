extends Node2D
@onready var animation_player = $AnimationPlayer
const RIGID_BODY_2D_BALA_BUENA = preload("res://scenes/game/levels/objects/Barco/rigid_body_2d_BalaBuena.tscn")
var daño_recibido=false


	


func _ready():
	animation_player.play("Bomba_Moviendose")


func _on_area_2d_body_entered(body):
	if not daño_recibido:
		var instanciarBomba=RIGID_BODY_2D_BALA_BUENA.instantiate()
		instanciarBomba.position=$Bullet.position	
		add_child(instanciarBomba)
		daño_recibido=true


func _on_area_2d_body_exited(body):
	daño_recibido=false
