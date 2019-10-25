/// @description Insert description here
// You can write your code in this editor
randomize()
spawning = 1
global.roomW = 0
global.roomH = 0
roomsWide = 2
roomWidth = 2880
roomsHigh = 1
roomHeight = 960
HCount = 3
left = 0
right = 0
down = 0
up = 0

lCount = 4
lDCount = 4
lUCount = 5
rCount = 4
rDCount = 4
rUCount = 5
lRCount = 6
lRDCount = 4
lRUCount = 5
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