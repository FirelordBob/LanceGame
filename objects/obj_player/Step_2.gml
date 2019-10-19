/// @description Insert description here
// You can write your code in this editor
if leftPress
	hsp-=moveSpeed
	
if rightPress
	hsp+=moveSpeed

if spacePress && onGround > 0
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
	while(!(position_meeting(bbox_left,bbox_top-2,obj_floor)||position_meeting(bbox_right,bbox_top-2,obj_floor)  ))
		y--
	vsp = 0
	onGround = 0
	jumping = 0
}

//down collision
if((position_meeting(bbox_left,bbox_bottom+1,obj_floor)||position_meeting(bbox_right,bbox_bottom+1,obj_floor))) 
{
	onGround = coyoteTime 
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