switch mode {
	case "wait":
		if(distance_to_object(myplayer) < aggrodistance ){
			mode = "hunt"
			targetPointX = myplayer.x
			targetPointY = myplayer.y
			alarm_set(1,hunttime)
		}
		break;
	case "find":
		if(mp_potential_step(walltarget.x+walltarget.sprite_width/2,walltarget.y+sprite_height/2,moveSpeed,false)) {
			alarm_set(2,waittime)
			mode = "recovering"
			x = walltarget.x + walltarget.sprite_width/2
			y = walltarget.y + walltarget.sprite_height/2
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