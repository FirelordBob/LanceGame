/// @description Insert description here
// You can write your code in this editor
currentX = x
currentY = y
timeAlive++

if(place_meeting(x,y-10,obj_player) && !attacking)
{
	with instance_create_depth(x+sprite_width/2,bbox_top,depth+1,obj_wallMonsterAttack)
		parent = other
	attacking = 1		

}