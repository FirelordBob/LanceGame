if(lanced) {
		//down collision
		if((position_meeting(bbox_left,bbox_bottom+1,obj_floor)||position_meeting(bbox_right,bbox_bottom+1,obj_floor))) 
		{
			y = currentY
			while(!(position_meeting(bbox_left,bbox_bottom+1,obj_floor)||position_meeting(bbox_right,bbox_bottom+1,obj_floor)))
				y++
			while((position_meeting(bbox_left,bbox_bottom,obj_floor)||position_meeting(bbox_right,bbox_bottom,obj_floor)))
				y--
			vsp = -vsp*.3
		}
		else //gravity
		{
			vsp += grav
			
		}
		if(abs(vsp)>1)
			y += vsp
	}
else
{

switch mode {
	case "wait":
		if(distance_to_object(myplayer) < aggrodistance && image_speed = 0 ){
			image_speed = 1
		
		}
		break;
	case "find":
		if(mp_potential_step(walltarget.x+walltarget.sprite_width/2,walltarget.y+sprite_height/2,moveSpeed,false)) {
			alarm_set(2,waittime)
			mode = "recovering"
			x = walltarget.x + walltarget.sprite_width/2
			y = walltarget.y + walltarget.sprite_height/2
			sprite_index = spr_wallCrawlerReturn
		}
		break;
	case "hunt":
		move_towards_point(targetPointX,targetPointY,moveSpeed)
		mode = "recovering";
		break;
	case "recovering":
		//chill out
		break;
}
}