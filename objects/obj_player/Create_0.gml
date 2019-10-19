/// @description Insert description here
// You can write your code in this editor
currentX = x
currentY = y

leftPress = 0
rightPress = 0
upPress = 0
downPress = 0
spacePress = 0

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

camera = instance_create_depth(x,y,depth-1,obj_camera)
camera.creator = id