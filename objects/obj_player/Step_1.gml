/// @description Insert description here
// You can write your code in this editor
currentX = x
currentY = y
leftPress = 0
rightPress = 0
upPress = 0
downPress = 0
spacePress = 0
shiftPress = 0
if(image_alpha == 0 && alarm_get(1) != -1) 
	alarm_set(1,20)
else if(image_alpha != 0 && alarm_get(1) != -1)
	alarm_set(1,-1)

