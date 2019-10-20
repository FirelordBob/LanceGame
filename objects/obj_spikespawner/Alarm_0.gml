/// @description Insert description here
// You can write your code in this editor

//roll 0-8. If it's 0-1, place a spike.
//i.e. 22% chance
if(irandom(8) < 2)
	room_instance_add(global.roomGame,x + global.roomW*room_width, y + global.roomH*room_height,obj_spikes)