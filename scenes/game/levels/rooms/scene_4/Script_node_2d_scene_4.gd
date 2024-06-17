extends Node2D

@onready var character_instance = $MainCharacterracter # Ajusta esto según la jerarquía de tu escena


func _ready():
	# Verifica que la instancia del personaje exista
	if character_instance:
		# Cambiar valores exportados
		character_instance.gravity = 800.0
		character_instance.velocity = 150.0
		character_instance.jump = 1000.0
		
		# Configurar nodos referenciados
		character_instance.character = $Path/To/CharacterBody2D
		character_instance.main_animation = $Path/To/AnimatedSprite2D
		character_instance.effect_animation_sword = $Path/To/EffectAnimation
		character_instance.audio_player = $Path/To/AudioStreamPlayer2D
	else:
		print("Character instance not found")

