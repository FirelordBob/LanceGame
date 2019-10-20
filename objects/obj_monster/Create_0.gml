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

if(room != global.roomGame)
	alarm_set(11,1)