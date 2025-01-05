
if position_meeting(mouse_x, mouse_y, time1)  {
time1.image_index = 4; 	
xx= time1.x;
yy=time1.y;
}
else{
	time1.image_index = 0;
}

if position_meeting(mouse_x, mouse_y, time2)  {
time2.image_index = 5; 	
xx= time2.x;
yy=time2.y;
}
else{
	time2.image_index = 1;
}

if position_meeting(mouse_x, mouse_y, time3)  {
time3.image_index = 6; 	
xx= time3.x;
yy=time3.y;
}
else{
	time3.image_index =2;
}
if position_meeting(mouse_x, mouse_y, time4)  {
time4.image_index = 7; 	
xx= time4.x;
yy=time4.y;
}
else{
	time4.image_index = 3;
}


if mouse_check_button_released(mb_left) and position_meeting(mouse_x, mouse_y, obj_time){

mouse_clear(mb_any);
show_debug_message(str2);

if (( irandom(3))==1) {
	audio_play_sound(sn_loon, 5,false);
	drawsprite=spr_loon;
str2= "You found the loon!";
obj_canoe.hp+=2;
show_debug_message(str2);
}
else {
str2 = "You found a boot...";
audio_play_sound(sn_fail, 4,0);
show_debug_message(str2);
}

clicked=true;
alarm[0]=60*4;
}

if (clicked==true){
obj_time.x= -32;
obj_time.y=-32;	
}
