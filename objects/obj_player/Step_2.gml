/// @description Insert description here
// You can write your code in this editor

if(shiftPress && !lance.attached)
{
	shiftCount++
	lance.image_angle += irandom_range(-2,2)
	x += irandom_range(-1,1)
	with(lance.lanceEffect)
		{
			part_type_speed(tpPartType, .1, 1, 0, 0);
			part_type_direction(tpPartType, 0, 360, 0, 2);	
			part_particles_create(tpParticles, lance.x, lance.y, tpPartType, 1);
		}
	
	if(shiftCount > shiftTime)
	{
		shiftCount = 0
		lance.x = x
		lance.y = y
		with(lance.lanceEffect)
		{
			part_type_speed(tpPartType, .1, 1, 0, 0);
			part_type_direction(tpPartType, 0, 360, 0, 2);	
			part_particles_create(tpParticles, lance.x, lance.y, tpPartType, 40);
		}
	}
}
else
	shiftCount = 0

if leftPress && !shiftPress
	hsp-=moveSpeed
	
if rightPress && !shiftPress
	hsp+=moveSpeed

if spacePress && onGround > 0 && !shiftPress
{
	vsp-=jumpSpeed*onGround
	jumping = 1
}

hsp = clamp(hsp,-hMax,hMax)

x += hsp
y += vsp	

//side collision
if ((position_meeting(bbox_right+hsp,bbox_bottom,obj_floor) || position_meeting(bbox_right+hsp,bbox_top,obj_floor) ||position_meeting(bbox_right+hsp,y,obj_floor)) && hsp > 0) ||(position_meeting(bbox_left+hsp,bbox_bottom,obj_floor) || position_meeting(bbox_left+hsp,bbox_top,obj_floor) ||position_meeting(bbox_left+hsp,y,obj_floor))
{
	x = currentX
	hsp = 0	
}

//up collision
if(position_meeting(bbox_left,bbox_top-1,obj_floor)||position_meeting(bbox_right,bbox_top-1,obj_floor) )
{
	y = currentY
	while(!(position_meeting(bbox_left,bbox_top-1,obj_floor)||position_meeting(bbox_right,bbox_top-1,obj_floor)  ))
		y--
	y+=2
	vsp = 0
	onGround = 0
	jumping = 0
}

//down collision
if((position_meeting(bbox_left,bbox_bottom+1,obj_floor)||position_meeting(bbox_right,bbox_bottom+1,obj_floor))) 
{
	onGround = coyoteTime 
	tpUse = 1
	y = currentY
	while(!(position_meeting(bbox_left,bbox_bottom+1,obj_floor)||position_meeting(bbox_right,bbox_bottom+1,obj_floor)  ))
		y++
	hsp*=fric
	vsp = 0
	
}
else //gravity/coyote time
{
	if (onGround > 0)
	{
		if(onGround == coyoteTime)
			vsp -= 4*grav
		onGround--
	}
    vsp += grav
}


collision_check()
vsp = clamp(vsp,-vMax,vMax)
if(hsp != 0||vsp != 0)
	image_speed =1 
else
	image_speed =0
