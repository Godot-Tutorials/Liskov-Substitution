extends Node

# import, injecting classes
var goodEnemy = GoodEnemy.new()
var goodShield = GoodShield.new()

# variabe/property declaration
var health

func _ready():
	# value is 90
	health = damageHealth(goodEnemy.getHealth())
	print("Base Class Health: ", health)
	
	# value is 10
	health = damageHealth(goodShield.getHealth())
	print("Sub Class Health: ", health)
	


func damageHealth(enemyHealth: int):
	enemyHealth -= 10
	return enemyHealth
