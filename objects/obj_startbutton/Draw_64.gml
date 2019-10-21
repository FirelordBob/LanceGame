draw_set_color(c_white)	
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_font(font0)

draw_text_transformed(5800,100,"The Magic Lance",2,2,image_angle)
draw_text(600,1000,"Press Escape to quit")
draw_text(600,900,"Press Backspace to return to this menu")

draw_text(620,440,"Tutorial")
draw_text(1050,440,"Start Game")

draw_sprite_ext(sprite1, cycle, 920, 630, 10, 10, 0, c_white, 1 );
