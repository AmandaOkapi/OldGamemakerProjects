/// @desc
draw_self();
draw_set_colour(c_white);
draw_sprite(spr_icecube,0,x-size,y);
draw_set_halign( fa_left);
draw_text(x-text_sizex,y-text_sizey,"Oh no, \n you slipped on an \n icecube ")