/// @description Insert description here
// You can write your code in this editor
if(!attached && player != noone)
{
	var targetX = x
	var targetY = y
	var found = 0
	var closest = 100
	var newX = x
	var newY = y
	with(player)
	{
		for( var i = -25; i < 25; i++)
			for( var j = -25; j < 25; j++)
			{
				if(!place_meeting(targetX+i,targetY+j,obj_floor) && point_distance(targetX,targetY,targetX+i,targetY+j) < closest)
				{
					newX = targetX + i
					newY = targetY + j
					closest = point_distance(targetX,targetY,targetX+i,targetY+j)
					found = 1
				}
			}
	}
	
	if(found)
	{
		player.x = newX
		player.y = newY
		player.currentX = newX
		player.currentY = newY
		player.vsp = vspeed
		player.hsp = hspeed
		with(player)
			collision_check()
			
		with(obj_monster)
		{
			if(point_distance(x,y,newX,newY) < 50)	
				instance_destroy()
		}
	}
	else
	{
		x = player.x
		y = player.y
		attached = 1
		reattach = 0
		
	}
	tp = 0
	cooldown = 1
	alarm_set(3,cooldownTime)
	var dir = 0
	var dist = 0
	with(lanceEffect)
	{
		dist = point_distance(lanceStartX,lanceStartY,x,y)
		dir = point_direction(lanceStartX,lanceStartY,x,y)
		part_type_speed(tpPartType, 3, 5, -.1, 0);
		part_type_direction(tpPartType, dir-30, dir+30, 0, 0);
		part_particles_create(tpParticles, x, y, tpPartType, 40);
	}
	with(obj_camera)
	{
		shakeX =((dist/180)+5) * sin(dir/(2*pi)) 
		shakeY =((dist/120)+5) * -cos(dir/(2*pi)) 
		
	}
}

