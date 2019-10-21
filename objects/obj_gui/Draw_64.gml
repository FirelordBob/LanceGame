/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)

draw_set_alpha(.3)
draw_set_color(c_black)
draw_rectangle(0,0,display_get_gui_width(),50,0)
draw_set_color(c_white)
draw_set_alpha(1)
draw_text(40,30,"HP: " + string(global.hp))

draw_text(300,30, "Kills: " + string(global.killCount))
draw_text(560,30, "Cash: " + string(score))
draw_text(900,30,instance_number(obj_gui))