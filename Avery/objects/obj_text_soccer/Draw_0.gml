/// @desc
/// @desc

//draw_set_color(c_black);
//draw_set_alpha(1);
//draw_rectangle(xx+sizex, yy+sizey, xx-sizex, yy-sizey, false);
draw_self();
draw_set_colour(c_white);
draw_sprite(spr_ball,0,x-size,y);
draw_set_halign(fa_left);
draw_text(x-text_sizex,y-text_sizey,"A soccer ball")