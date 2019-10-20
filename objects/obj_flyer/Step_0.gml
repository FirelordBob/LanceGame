if(initialized){
if(!instance_exists(myplayer)){
	myplayer = instance_nearest(x,y,obj_player)
} else {
	if distance_to_object(myplayer) < aggrodistance {
		mp_potential_step_object(myplayer.x, myplayer.y, myspeed, obj_floor)
	} else { 
		if(mydirection == "left") {
			if(mp_potential_step_object(my_far_left_x, my_stable_y, myspeed, obj_floor)) {
				mydirection = "right";
			}
		} else {
			if(mp_potential_step_object(my_far_right_x, my_stable_y, myspeed, obj_floor)) {
				mydirection = "left";
			}
		}
	}
}
}