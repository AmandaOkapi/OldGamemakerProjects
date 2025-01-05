/// @desc

draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(x,y,text);

if cantype==true {
	cursor_x=initial_x+string_width(text); 

	blinking=true;
}
else
{
	draw_rectangle(-1,-1,-1,-1,false);	
	blinking=false;
	timr=0;
	timr2=0;
}

if (blinking==true) {
		if (timr>=0){
			if timr2=0{
		draw_rectangle(cursor_x,y+ry, cursor_x+rx, y-ry,false);
		timr+=1;
			}
		if (timr>=timr_length){
			draw_rectangle(-1,-1,-1,-1,false);	
			timr2+=1;
			if (timr2>=timr_length){
			timr2=0;
			timr=0;
			}
		}
}
}