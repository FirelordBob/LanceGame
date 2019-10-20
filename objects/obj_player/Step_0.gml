/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_monster))
{
	var enemy = instance_place(x,y,obj_monster)
	hsp = sign(x-enemy.x)*hMax
	vsp = -vMax
	x = currentX
	y = currentY
}

if(place_meeting(x,y,obj_spikes))
{
	var enemy = instance_place(x,y,obj_spikes)
	hsp = sign(x-enemy.x)*hMax
	vsp = -vMax
	x = currentX
	y = currentY
}

