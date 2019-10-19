/// @description Insert description here
// You can write your code in this editor
if(attached)
{
	attached = 0
	var dir = point_direction(x,y,mouse_x,mouse_y)
	direction = dir
	speed = throwSpeed
	gravity = .5
	alarm_set(1,10)
}