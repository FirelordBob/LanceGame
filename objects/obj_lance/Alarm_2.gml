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
		var playerOldX = player.x
		var playerOldY = player.y
		player.x = newX
		player.y = newY
		player.currentX = newX
		player.currentY = newY
		player.vsp = vspeed
		player.hsp = hspeed
		with(player)
			collision_check()
		
		var distTarget = point_distance(playerOldX,playerOldY,newX,newY)
		var dirTarget = point_direction(playerOldX,playerOldY,newX,newY)
		for(var i = 0;  i < distTarget; i+=1 )
		{
			var checkX = playerOldX + lengthdir_x(i,dirTarget)
			var checkY = playerOldY + lengthdir_y(i,dirTarget)
			if(place_meeting(checkX,checkY,obj_monster))
				instance_destroy(instance_place(checkX,checkY,obj_monster))
		}
		with(obj_monster)
		{
			if(point_distance(x,y,newX,newY) < 70)
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

