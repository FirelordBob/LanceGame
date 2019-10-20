/// @description Insert description here
// You can write your code in this editor
if(spawning)
{
	draw_set_color(c_black)	
	draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(),0)
	draw_set_color(c_white)	
	draw_set_font(font0)
	draw_text(display_get_gui_width()/2,display_get_gui_height()/2,"Level " + string(global.level))
	
}