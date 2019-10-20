
if(instance_place(x+(moveDir*sprite_width*0.8),y+1,obj_floor)) {
	hsp = moveDir*moveSpeed
} else {
	moveDir = -moveDir
}