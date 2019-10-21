/// @description Insert description here
// You can write your code in this editor
with(obj_lance)
	if(monster == other.id)
		monster = noone
onGround = 0
hsp = 0
vsp = 0
grav = .7
fric = .2
jumpSpeed = .1
jumping = 0
moveSpeed = 3
hMax = 5
vMax = 15
currentX = x
currentY = y
depth = -8
timeAlive = 0

if(irandom(1) = 1)
	moveDir = 1
else
	moveDir = -1

moveSpeed = 1
turnTime = irandom_range(200,400)
alarm_set(0,turnTime)