draw_set_color(c_white)	
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(font0)


draw_text(940,300,"Game Over!")
draw_text(940,400,"Your Cash: $" + string(global.cash) + "!")
draw_text(940,500,"Your Kills: " + string(global.killCount) + "!")
draw_text(940,600,"You made it to level: " + string(global.level) + ". Wow!")

draw_text(780,820,"Back to Menu")