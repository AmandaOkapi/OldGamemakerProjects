/// @desc
if (keyboard_check_pressed(ord("R"))) {
game_restart();	
}



key_left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));

key_right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));

mouse_click =  mouse_check_button_pressed(mb_left);

escape= keyboard_check_pressed(vk_escape)

buf = place_meeting(x,y,obj_collide);

loon= place_meeting(x,y, obj_loon);

if place_meeting(x,y,obj_suitcase){
	var suitcasetouching= instance_place(x, y, obj_suitcase);
	instance_destroy(suitcasetouching);	
	instance_create_layer(x,y,"shield",obj_shield);
shielded=true;	
alarm[2]=60*10;
}

if place_meeting(x,y,obj_bonsai){
	var bonsaitouching= instance_place(x, y, obj_bonsai);
	instance_destroy(bonsaitouching);	
	alarm[1]=120;
	spd=2;
	maxspd=4;
}

if  place_meeting(x,y,obj_rock) and state!=state_loon {
	if shielded==true{
	instance_destroy(obj_shield);	
	alarm[5]=10;
	}
	else{
	alarm[0]=60;
layer_set_visible(lay_id, true);
}


}

audio_listener_set_position(0,x,y,0);

onisland = place_meeting(x,y,obj_islandwall);

if hp>6{
hp=6;	
}
image_angle = direction; 



if image_alpha==0.5 and isokapi=false{
	alarm[4]=500;
	isokapi=true;
}
if y<4000{
checkpoint=true;	
}

if y>8000 || y<0 ||x<0 || x>1238{
	x=600;
	y=7600;
}

if hp<=0{
state=state_gameover;	
}

if state !=state_pause{
timr+=1;	
}

if state!=state_loon{
draw_set_font(Font1);	
}

state();