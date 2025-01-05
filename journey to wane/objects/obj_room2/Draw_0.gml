/// @desc
draw_set_font(Font1);
draw_set_halign(fa_center);
if dodraw{
draw_set_alpha(0.2);
draw_rectangle_color(60,260,260,60,c_blue,c_blue,c_blue,c_blue,0);
draw_set_font(Font1);
draw_set_alpha(1);
draw_set_color(c_black);
draw_text(160,60,"Time\n(minutes):");
txt1 = obj_health.totaltimr/3600;
draw_text(160,150,txt1);
draw_text(160,185,"Rank:");
txt2 = obj_health.rank;
draw_text(160,210,txt2);
}