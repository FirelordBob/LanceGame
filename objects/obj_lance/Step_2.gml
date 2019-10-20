/// @description Insert description here
// You can write your code in this editor
if(!attached && player != noone && place_meeting(x,y,player) && reattach = 1)	
{
	attached  = 1
	monsterAttach = 0
	monster = noone
	reattach = 0
	wallAttach = 0
	tp = 0
}
else if(attached)
{
	x = player.x
	y = player.y
	image_angle = point_direction(x,y,mouse_x,mouse_y)
}
else if(!attached && speed != 0)
{
	image_angle = direction	
	if(place_meeting(x,y,obj_floor))
	{
		speed = 0
		gravity = 0
		wallAttach = 1
	}
	if(place_meeting(x,y,obj_monster) && !monsterAttach)
	{
		speed = 0
		gravity = 0	
		monsterAttach = 1
		monster = instance_place(x,y,obj_monster)
		offsetX = monster.x - x
		offsetY = monster.y - y
	}
}
if(instance_exists(monster))
{
	x = monster.x - offsetX
	y = monster.y - offsetY
}
else
{
	monsterAttach = 0
	monster = noone	
}
