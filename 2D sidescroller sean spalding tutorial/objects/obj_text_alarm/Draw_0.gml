/// @desc
draw_self();
draw_set_colour(c_white);
draw_set_halign( fa_left);
draw_sprite(spr_alarm,0,x-size,y);
draw_text(x-text_sizex,y-text_sizey,"It's your alarm");
