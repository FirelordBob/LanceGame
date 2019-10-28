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
				draw_set_color(make_color_hsv(irandom(255),120,255))
				draw_line_width(other.lanceStartX+irandom_range(-10,10),other.lanceStartY+irandom_range(-10,10),other.lanceStartX+lengthdir_x(dist,dir) ,other.lanceStartY+lengthdir_y(dist,dir),4)	
			}
	
		}
		if(cooldown && player!=noone && alarm_get(3) > cooldownTime + player.tpUse*player.tpStale - player.tpStale)
		{
			for(var i = 0;i< 10; i++)
			{
				var dir = point_direction(other.lanceStartX,other.lanceStartY,x,y)
				var dist = point_distance(other.lanceStartX,other.lanceStartY,x,y)- point_distance(other.lanceStartX,other.lanceStartY,x,y)*((alarm_get(3)-(cooldownTime + player.tpUse*player.tpStale - player.tpStale))/(cooldownTime-cooldownTime + player.tpUse*player.tpStale - player.tpStale))
				draw_set_color(make_color_hsv(irandom(255),120,255))
				draw_line_width(other.lanceStartX+lengthdir_x(dist,dir)+irandom_range(-10,10) ,other.lanceStartY+lengthdir_y(dist,dir)+irandom_range(-10,10),x,y,4)	
			}
	
		}
		
		if(instance_exists(player) && player.shiftCount > 10)
		{
			for(var i = 0;i< 10; i++)
			{
				if(irandom(player.shiftTime - player.shiftCount) = 0)
				{
					var dir = point_direction(player.x,player.y,x,y)
					var dist = point_distance(player.x,player.y,x,y)
					draw_set_color(make_color_hsv(irandom(255),120,255))
					draw_line_width(player.x+irandom_range(-10,10),player.y+irandom_range(-10,10),player.x+lengthdir_x(dist,dir) ,player.y+lengthdir_y(dist,dir),1)	
				}
			}
			
			
		}
		if(attached)
		{
			var Angle = point_direction(x,y,mouse_x,mouse_y)
			var lastY = y
			var lastX = x
			var totalLength = 0
			for (var i = 0 ; i < 200 ; i++){
			    var X = i * 2; 
    
    
			    if (Angle > 270 ) {
       
			    }
			    else
			    if (Angle > 90){
			        X =-X ;    
			    }
			    else
			    if (Angle > 180){
			        X = -X ;    
			    }
				if(Angle > 89.8 && Angle < 90.2)
				{
					if(Angle > 90)	
						Angle =  90.2
			
					else
						Angle = 89.8
		
				}
				if(Angle > 269.8 && Angle < 270.2)
				{
					if(Angle > 270)	
						Angle =  270.2
			
					else
						Angle = 269.8
		
				}
			    var Y = projectile_motion(X,throwSpeed,Angle,0,0,.5) ;
				totalLength += point_distance(lastX,lastY,x+X,y-Y)
				if(totalLength > 300)
					break
				else
				{
				    draw_set_color(c_red) ;  
					draw_line(lastX,lastY,x+X,y-Y)
				
					lastX = x+X
					lastY = y-Y
				}


			}
		}
	}
}
