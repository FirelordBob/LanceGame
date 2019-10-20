if(place_meeting(x,y,obj_spikes)) {
	var inst = instance_place(x,y,obj_spikes)
	with inst {
		instance_destroy()
	}
}