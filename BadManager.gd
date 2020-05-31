extends Node

# import, injecting classes
var badEnemy = BadEnemy.new()
var badShield = BadShield.new()

# variable/property decleration
var health

func _ready():
	# 90
	health = damageHealth(badEnemy.getHealth())
	print("Base Class Health: ", health)
	
	# error thrown: can't convert String to int = don't pass GO
	health = damageHealth(badShield.getHealth())
	print("Sub Class Health: ", health) #we dont even run this


func damageHealth(enemyHealth: int):
	enemyHealth -= 10 # we don't even run this
	return enemyHealth
