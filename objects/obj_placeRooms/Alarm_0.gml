/// @description Insert description here
// You can write your code in this editor


var numChecked = []
for(var i = 0; i < roomsWide ; i++)
	numChecked[i] = 0

var spotChosen = 0
var finished = 0
while(!spotChosen)
{

		
	var finishedLine = 1
	var finishedCount = 0
	for(var i = 0; i < roomsWide; i++)
	{
		if numChecked[i] = 0
			finishedLine = 0
		else
			finishedCount++
	}
		
	
	if(finishedLine && global.roomH < roomsHigh - 1)	
	{
		global.roomH++	
		down = 0
		for(var i = 0; i < roomsWide; i++)
			numChecked[i] = 0
	}
	
	else if(finishedLine && global.roomH >= roomsHigh -1)
	{
		finished = 1
		room_goto(global.roomGame)
		alarm_set(2,3)
		break;
		
	}
	
	global.roomW = irandom(roomsWide-1)
	
	if !numChecked[global.roomW] && !roomsFinished[global.roomW,global.roomH]
		spotChosen = 1
	else
		numChecked[global.roomW] = 1
}
if (spotChosen && !finished)
{
	var text = ""
	var up = 0
	if(global.roomW = 0)
		text+= "R"
	else if(global.roomW = roomsWide - 1)
		text+= "L"
	else
		text+= "LR"
	
	if(global.roomH > 0)
		if(roomText[global.roomW,global.roomH-1] = "D")
		{
			roomText[global.roomW,global.roomH] = "U"
			text+= "U"
			up = 1
		}
		
	if(global.roomH < roomsHigh - 1 && !up)
	{
		if(!down)
		{
			roomText[global.roomW,global.roomH] = "D"
			text += "D"
			down = 1
		}
	}
			
	var roomNum = 0
	if(text = "L")
		roomNum = irandom(lCount - 1)
	if(text = "LU")
		roomNum = irandom(lUCount - 1)
	if(text = "LD")
		roomNum = irandom(lDCount - 1)
		
	if(text = "R")
		roomNum = irandom(rCount - 1)
	if(text = "RU")
		roomNum = irandom(rUCount - 1)
	if(text = "RD")
		roomNum = irandom(rDCount - 1)
	
	if(text = "LR")
		roomNum = irandom(lRCount - 1)
	if(text = "LRU")
		roomNum = irandom(lRUCount - 1)
	if(text = "LRD")
		roomNum = irandom(lRDCount - 1)
	
	currentText = "room" + text + string(roomNum)
	show_debug_message(text+string(roomNum))
	room_goto(asset_get_index("room" + text + string(roomNum)))
	roomsFinished[global.roomW,global.roomH] = 1
	alarm_set(1,2)
}