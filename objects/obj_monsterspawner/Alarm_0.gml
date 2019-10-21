/// @description Insert description here
// You can write your code in this editor


var successThreshold = 5*global.level + 25
if(irandom(100) < successThreshold) {

	switch( irandom(4) ){
	
		case 0:
			room_instance_add(global.roomGame,x + global.roomW*room_width, y + global.roomH*room_height,obj_zombie)
			break;
		case 1:
			room_instance_add(global.roomGame,x + global.roomW*room_width, y + global.roomH*room_height,obj_zombiehard)
			break;
		case 2:
			room_instance_add(global.roomGame,x + global.roomW*room_width, y + global.roomH*room_height,obj_bouncer)
			break;
		case 3:
			room_instance_add(global.roomGame,x + global.roomW*room_width, y + global.roomH*room_height,obj_notPirhannaPlant)
			break;
		case 4:
			room_instance_add(global.roomGame,x + global.roomW*room_width, y + global.roomH*room_height,obj_wallCrawler)
			break;
		default:
			break;
	}
}