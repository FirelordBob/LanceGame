/// @description Insert description here
// You can write your code in this editor


var dir = point_direction(x,y,mouse_x,mouse_y)
if(attached)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,dir,image_blend,1)
else
	draw_self()
