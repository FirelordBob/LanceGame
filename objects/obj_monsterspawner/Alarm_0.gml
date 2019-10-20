/// @description Insert description here
// You can write your code in this editor
var choice = irandom(1)

switch( choice ){
	
	case 0:
		room_instance_add(global.roomGame,x + global.roomW*room_width, y + global.roomH*room_height,obj_zombie)
		break;
	case 1:
		room_instance_add(global.roomGame,x + global.roomW*room_width, y + global.roomH*room_height,obj_flyer)
		break;
}