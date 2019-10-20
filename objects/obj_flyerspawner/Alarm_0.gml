/// @description Insert description here
// You can write your code in this editor


var successThreshold = 5*global.level + 25
if(irandom(100) < successThreshold) {
	room_instance_add(global.roomGame,x + global.roomW*room_width, y + global.roomH*room_height,obj_flyer)
}