/// @description Insert description here
// You can write your code in this editor
currentX = x
currentY = y

leftPress = 0
rightPress = 0
upPress = 0
downPress = 0
spacePress = 0
shiftPress = 0
coyoteTime =15
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
lance = noone
shiftCount = 0
shiftTime = 100
camera = instance_create_depth(x,y,depth-1,obj_camera)
camera.creator = id
image_speed =0
global.cash = 0;

invulnerable = 0
invulnerableTime = 100
death = 0
with(obj_monster)
{
	if(distance_to_object(other) < 200)	
		instance_destroy()
	
}
with(obj_notPirhannaPlant)
{
	if(distance_to_object(other) < 200)	
		instance_destroy()
	
}
with(obj_hazard)
{
	if(distance_to_object(other) < 400)	
		instance_destroy()
	
}

depth = 3