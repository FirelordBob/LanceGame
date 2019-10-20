/// @description Insert description here
// You can write your code in this editor


//NOTE: Some choices do NOT create a monster. The default will do nothing.
var choice = irandom(4)

switch( choice ){
	
	case 0:
		room_instance_add(global.roomGame,x + global.roomW*room_width, y + global.roomH*room_height,obj_zombie)
		break;
	case 1:
		room_instance_add(global.roomGame,x + global.roomW*room_width, y + global.roomH*room_height,obj_flyer)
		break;
	case 2:
		room_instance_add(global.roomGame,x + global.roomW*room_width, y + global.roomH*room_height,obj_zombiehard)
		break;
	default:
		break;
}