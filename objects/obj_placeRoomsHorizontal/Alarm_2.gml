/// @description Insert description here
// You can write your code in this editor
var xx = 0
var yy = 0
var spotFound = 0

var farFloor = instance_nearest(room_width,room_height/2,obj_floor)
levelExit = instance_create_depth(farFloor.x,farFloor.y - farFloor.sprite_height,depth-1,obj_exitHorizontal)
var closeFloor = instance_nearest(0,room_height/2,obj_floor)
player = instance_create_depth(closeFloor.x+closeFloor.sprite_width/2,closeFloor.y - closeFloor.sprite_height,3,obj_player)
lance = instance_create_depth(closeFloor.x+closeFloor.sprite_width/2,closeFloor.y - closeFloor.sprite_height,2,obj_lance)


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

