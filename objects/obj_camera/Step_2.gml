/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
var playerHspeed = 0
with(obj_player)
{
	playerHspeed = hsp

	var targetX = (x*3 + mouse_x*2)/5
	var targetY = (y*3 + mouse_y*2)/5
	var dist = point_distance(other.x,other.y,targetX,targetY)
	var dir = point_direction(other.x,other.y,targetX,targetY)
	if(dist < 20)
	{
		other.x = targetX
		other.y = targetY 
	}
	else
	{
		other.x = other.x + lengthdir_x(dist*.05,dir)
		other.y = other.y + lengthdir_y(dist*.05,dir) 
	}
	if(image_yscale=.5 && playerHspeed = 0)
		other.downCount++
	else
	{
		other.downCount = 0
		if(other.dirBonus > 0)
			other.dirBonus -= 40
	}
	
}
if(upDown && playerHspeed = 0)
{
	upCount++	
}
else
{
	upCount = 0
	if(other.dirBonus < 0)
		other.dirBonus += 40
}
if(upCount > 30 && dirBonus > -camera_get_view_height(camera)/2)
{
	dirBonus -= 40
}
if(downCount > 30 && dirBonus < camera_get_view_height(camera)/2)
{
	dirBonus += 40
}
if(downCount > 20)
{
	if(dirBonus < camera_get_view_height(camera)/2)
		dirBonus += 50
}
camera_set_view_pos(camera,floor(x-camera_get_view_width(camera)/2),floor(y-camera_get_view_height(camera)/2 + dirBonus))