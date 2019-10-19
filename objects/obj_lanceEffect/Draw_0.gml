/// @description Insert description here
// You can write your code in this editor
if(lance != noone)
{
	with(lance)
	{
		if(tp && player!=noone)
		{
			for(var i = 0;i< 10; i++)
			{
				var dir = point_direction(other.lanceStartX,other.lanceStartY,x,y)
				var dist = point_distance(other.lanceStartX,other.lanceStartY,x,y)/(alarm_get(2) )
				draw_set_color(make_color_hsv(irandom(255),255,255))
				draw_line_width(other.lanceStartX+irandom_range(-10,10),other.lanceStartY+irandom_range(-10,10),other.lanceStartX+lengthdir_x(dist,dir) ,other.lanceStartY+lengthdir_y(dist,dir),2)	
			}
	
		}
		if(cooldown && player!=noone && alarm_get(3) > 15)
		{
			for(var i = 0;i< 10; i++)
			{
				var dir = point_direction(other.lanceStartX,other.lanceStartY,x,y)
				var dist = point_distance(other.lanceStartX,other.lanceStartY,x,y)- point_distance(other.lanceStartX,other.lanceStartY,x,y)*((alarm_get(3)-15)/(cooldownTime-15))
				draw_set_color(make_color_hsv(irandom(255),255,255))
				draw_line(other.lanceStartX+lengthdir_x(dist,dir)+irandom_range(-alarm_get(3),alarm_get(3)) ,other.lanceStartY+lengthdir_y(dist,dir)+irandom_range(-alarm_get(3),alarm_get(3)),x,y)	
			}
	
		}
	}
}