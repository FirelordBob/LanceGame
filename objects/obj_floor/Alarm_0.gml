/// @description Insert description here
// You can write your code in this editor
room_instance_add(global.roomGame,x + global.roomW*room_width, y + global.roomH*room_height,object_index)
if(irandom(9) == 0) {
	room_instance_add(global.roomGame,x + global.roomW*room_width + sprite_width/2, y + global.roomH*room_height - 20,obj_coin)
}