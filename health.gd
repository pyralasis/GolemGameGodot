class_name Health

extends Resource

@export var maxHealth: int
@export var current: int
@export var regeneration: int

func damage(value: int):
	maxHealth -= value

func heal(value: int):
	maxHealth += value
