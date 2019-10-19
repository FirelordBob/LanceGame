/// @description Insert description here
// You can write your code in this editor
randomize()
global.roomW = 0
global.roomH = 0
roomsWide = 3
roomWidth = 720
roomsHigh = 4
roomHeight = 480

left = 0
right = 0
down = 0
up = 0

lCount = 1
lDCount = 1
lUCount = 1
rCount = 1
rDCount = 1
rUCount = 1
lRCount = 1
lRDCount = 1
lRUCount = 1
currentText = ""
global.roomGame = room_add()
room_set_height(global.roomGame,roomHeight*roomsHigh+96)
room_set_width(global.roomGame,roomWidth*roomsWide+96)
room_set_background_color(global.roomGame,c_black,true)
roomsFinished = [];
roomText = []
for(var i = 0; i < roomsWide; i++)
{
	for(var j = 0; j < roomsHigh; j++)
	{
		roomsFinished[i,j] = 0
		roomText[i,j] = ""
	}
}
alarm_set(0,1)

player = 0