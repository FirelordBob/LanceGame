/// @description Insert description here
// You can write your code in this editor
var left = 0
var right = 0
if(position_meeting(bbox_left-1,y,obj_floor))
	left = 1

if(position_meeting(bbox_right+1,y,obj_floor))
	right = 1
	
if(!left && !right)
	image_index = 3

if(left && !right)
	image_index = 2

if(!left && right)
	image_index = 1