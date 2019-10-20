/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_monster))
{
	var enemy = noone
	with(instance_place(x,y,obj_monster))
		enemy = id
	
	var dir = point_direction(enemy.x,enemy.y,x,y)	
	while(place_meeting(x,y,obj_monster))
	{
		x = x+lengthdir_x(1,dir)	
		y = y+lengthdir_y(1,dir)	
		
	}
	hsp = hMax* sin(dir/(2*pi)) 
	vsp = vMax* -cos(dir/(2*pi)) 
	x = currentX
	y = currentY
}

