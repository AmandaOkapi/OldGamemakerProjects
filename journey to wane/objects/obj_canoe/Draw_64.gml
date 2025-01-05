/// @desc

draw_set_font(Font1);
draw_set_color(c_black);
draw_set_halign(fa_left);

txtd=point_distance(x,y,obj_island.x,obj_island.y);
txt = "Distance to Wayne's island (m):";
txtd = round(txtd/10);
draw_text(64, 850,txt);
draw_text(64, 878,txtd);

if state==state_pause{
draw_sprite(spr_help,0, 480,480);	
}
