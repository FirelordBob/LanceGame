/// @description Insert description here
// You can write your code in this editor

//roll 0,1,2,3,4. If it's 0-2, place a treasure.
if(irandom(4) < 3)
	room_instance_add(global.roomGame,x + global.roomW*room_width, y + global.roomH*room_height,obj_treasurebox)