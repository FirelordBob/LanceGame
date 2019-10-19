if(place_meeting(x,y,obj_floor))
{
	var returnX = x
	var returnY = y
	var free = 0
	x += sprite_width/2
	if(place_meeting(x,y,obj_floor))
	{
		x = returnX
		y = returnY
	}
	else
		free = 1
	x -= sprite_width/2
	if(!free && place_meeting(x,y,obj_floor))
	{
		x = returnX
		y = returnY
	}
	else
		free = 1
		
	y += sprite_height/2
	if(!free && place_meeting(x,y,obj_floor))
	{
		x = returnX
		y = returnY
	}
	else
		free = 1
		
	y -= sprite_height/2
	if(!free && place_meeting(x,y,obj_floor))
	{
		x = returnX
		y = returnY
	}
	if(position_meeting(x,bbox_top-1,obj_floor))
	{
		y+=2	
	}
}