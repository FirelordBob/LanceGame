with obj_player {
	other.myplayer = id;
}
my_stable_y = y
my_far_left_x = x
my_far_right_x = x


while (!instance_place(my_far_left_x - 10,my_stable_y,obj_floor)) {
	my_far_left_x = my_far_left_x - 1
	if(my_far_left_x <= (x-(8*sprite_width))) {
		break;
	}
}


while (!instance_place(my_far_right_x + 10,my_stable_y,obj_floor)) {
	my_far_right_x = my_far_right_x + 1
	if(my_far_right_x >= (x+(8*sprite_width))) {
		break;
	}
}
mydirection = "left";

initialized = true;