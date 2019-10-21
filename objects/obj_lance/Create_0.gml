/// @description Insert description here
// You can write your code in this editor
player = noone
attached = 0
reattach = 1
throwSpeed = 15
tpDelay = 15
tp = 0
cooldown = 0
cooldownTime = 20
monsterAttach = 0
monster = noone
offsetX = 0
offsetY = 0
wallAttach = 0
alarm_set(0,1)



lanceEffect = instance_create_depth(x,y,-5,obj_lanceEffect)
	lanceEffect.lance = other.id
	
depth = 2