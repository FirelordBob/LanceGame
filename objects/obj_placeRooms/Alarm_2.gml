/// @description Insert description here
// You can write your code in this editor
var xx = 0
var yy = 0
var spotFound = 0
while(!spotFound)
{
with(obj_floor)
{
	
	if(!spotFound && irandom(10) = 0 && y < other.roomHeight*other.roomsHigh && y >other.roomHeight*other.roomsHigh- other.roomHeight/2 && position_empty(x,y-sprite_height) && position_empty(x-sprite_width,y-sprite_height) && position_empty(x+sprite_width,y-sprite_height) && position_empty(x,y-sprite_height*2))	
	{
		if(other.roomText[floor(x/other.roomWidth),0] != "D")
		{
		xx = x
		yy = y-sprite_height
		spotFound = 1
		}
	}
}
}
levelExit = instance_create_depth(xx,yy,depth-1,obj_exit)

var spotFound = 0
while(!spotFound)
{
with(obj_floor)
{
	
	if(!spotFound && irandom(10) = 0 && y < other.roomHeight && y > other.roomHeight/2 && position_empty(x,y-sprite_height) && position_empty(x-sprite_width,y-sprite_height) && position_empty(x+sprite_width,y-sprite_height) && position_empty(x,y-sprite_height*2))	
	{
		if(other.roomText[floor(x/other.roomWidth),0] != "U")
		{
		xx = x
		yy = y-sprite_height
		spotFound = 1
		}
	}
}
}
player = instance_create_depth(xx,yy,3,obj_player)
lance = instance_create_depth(xx,yy,2,obj_lance)

with(all)
{
	x+=48
	y+=48
}
var flr= 0
for(var i = 0; i <= roomsWide*(roomWidth/48);i++)
{
	flr = instance_create_depth(i*48,0,depth,obj_floor)	
	flr.highLight = "U"
	if(i == 0)
		flr.highLight = "UL"

}
for(var i = 0; i <= roomsWide*(roomWidth/48);i++)
{
	flr = instance_create_depth(i*48,roomsHigh*roomHeight+48,depth,obj_floor)	
	flr.highLight = "D"
	if(i == 0)
		flr.highLight = "DL"
}
for(var i = 0; i <= roomsHigh*(roomHeight/48)+1;i++)
{
	flr = instance_create_depth(0,i*48,depth,obj_floor)	
	flr.highLight = "L"
	if(i == 0)
		flr.highLight = "UR"
}
for(var i = 0; i <= roomsHigh*(roomHeight/48)+1;i++)
{
	flr = instance_create_depth(roomsWide*roomWidth+48,i*48,depth,obj_floor)	
	flr.highLight = "R"
	if(i == 0)
		flr.highLight ="UR"
	if(i == roomsHigh*(roomHeight/48)+1)
		flr.highLight = "DR"

}
spawning = 0



//for(var i = 0; i < roomsHigh; i+= 1)
//{
//	for(var j = 0; j< roomsWide; j+= 1)
//	{
//		var spotFound = 0
//		var movingDoor = 0
//		var buttonL = 0
//		var buttonR = 0
//		var currentChannel = 0
//		while(!spotFound)
//		{

//			with(obj_platform)
//			{
//				if(!spotFound && x < other.roomWidth*(j+1) && x > other.roomWidth*j && y < other.roomHeight*(i+1) && y > other.roomHeight*i-sprite_height && position_empty(x,y+sprite_height) && position_empty(x-sprite_width,y+sprite_height) && position_empty(x+sprite_width,y+sprite_height))	
//				{
					
//					if(movingDoor != 0)
//					{
//						if(buttonL != 0 && x > movingDoor.x && buttonR = 0)
//						{
													
//							buttonR = instance_create_depth(x,y+sprite_height,depth,obj_button)
//							buttonR.channel = currentChannel
//							movingDoor = 0	
//							spotFound = 1
//						}
//						if(buttonL = 0 && x < movingDoor.x)
//						{
							
//							buttonL = instance_create_depth(x,y+sprite_height,depth,obj_button)
//							buttonL.channel = currentChannel
//						}
						
//					}
//					var spaceAvailable = 1
//					for(var k = 1; k < 6;k++ )
//					{
//						if(y+sprite_height*k > other.roomHeight*(i+1) - sprite_height)
//							spaceAvailable = 0
//					}
//					if(buttonL = 0 && buttonR = 0 && spaceAvailable && movingDoor = 0)
//					{
//						movingDoor = instance_create_depth(x,y-sprite_height,depth,obj_movingDoor)
//						movingDoor.verticle = 1
//						currentChannel = movingDoor.channel
//					}
//				}
//			}
//			if(!spotFound)
//			{
//				if(movingDoor != 0)
//					instance_destroy(movingDoor)
//				if(buttonL != 0)
//					instance_destroy(buttonL)	
//				if(buttonR != 0)
//					instance_destroy(buttonR)	
//			}
//			spotFound = 1
//		}
//	}
//}


//for(var i = 0; i < roomsHigh; i+= 1)
//{
//	for(var j = 0; j< roomsWide; j+= 1)
//	{
//		var spotFound = 0
//		while(!spotFound)
//		{
//			with(obj_floor)
//			{
//				if(!spotFound && x < other.roomWidth*(j+1) && x > other.roomWidth*j && y < other.roomHeight*(i+1) && y > other.roomHeight*i && position_empty(x,y+sprite_height) && position_empty(x-sprite_width,y+sprite_height) && position_empty(x+sprite_width,y+sprite_height))	
//				{
//					instance_create_depth(x,bbox_bottom+16,depth-1,obj_bat)
//					spotFound = 1
//				}
//			}
//			spotFound = 1
//		}
//	}
//}

