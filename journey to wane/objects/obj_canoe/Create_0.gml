/// @desc

audio_play_sound(sn_background,1,1);

speed =0; 
canmove = true;
maxspd=2;
turn =1.5;
playingloon=false;

hp=6;
spd = 0.5;
checkpoint=false;
shielded=false;

victory=false;
isokapi=false;
timr=0;
audio_listener_set_position(0,x,y,0);
audio_listener_set_orientation(0,0,1,0,0,0,1);

 lay_id = layer_get_id("hit");

 layer_set_visible(lay_id, false);

///////IDLE ////
state_idle = function(){
		if onisland{
	state=state_victory;	
	}
	if escape{
	state=state_pause;	
	}
	// show_debug_message("idle");
	if buf {
	state = state_buf;	
	}
	if loon {
		state = state_loon;
	}
if (key_left) {
	canmove=true;
state= state_left;
}
if (key_right){
	canmove=true;
state = state_right;	
}
if (mouse_click) {
	canmove=true;
	state=state_break;
}
sprite_index = spr_canoe;

if (speed>0){
speed-=0.02;	
}
else{
speed=0;	
}
}

////////////////////////LEFT/////////////////////////
state_left = function(){
		if onisland{
	state=state_victory;	
	}
	if escape{
	state=state_pause;	
	}
		show_debug_message("left");
if buf {
	state = state_buf;	
	}
	if loon {
		state = state_loon;
	}
if (mouse_click) {
	canmove=true;
	state=state_break;
}
sprite_index = spr_canoeleft;
direction +=turn; 
//go faster with constant paddling
if (canmove == true){

audio_play_sound(sn_paddle1, 3,0);

if (speed = 0){
speed = 1;
}
else if speed+1< maxspd{
	speed = speed +spd;
}
else {
speed = maxspd;	
}
}

canmove=false;
if (image_index > image_number -1 ) {
canmove=true;
state = state_idle;
}

}

//////////////////////////////RIGHT ////////////////////////////
state_right = function(){
	
		if onisland{
	state=state_victory;	
	}
	if escape{
	state=state_pause;	
	}
if buf {
	state = state_buf;	
	}
		if loon {
		state = state_loon;
	}
if (mouse_click) {
	canmove=true;
	state=state_break;
}
sprite_index = spr_canoeright;

show_debug_message("right");
direction -=turn; 
if (canmove == true){
	audio_play_sound(sn_paddle2, 3,0);

if (speed == 0){
speed = 1;
show_debug_message("speed");
}
else if speed+1< maxspd{
	speed = speed +spd;
}
else {
speed = maxspd;	
}
}
show_debug_message(speed);
canmove=false;
if (image_index > image_number - 1) {
canmove=true;
state = state_idle;
}






}


///BREAK////////
state_break = function(){
		if onisland{
	state=state_victory;	
	}
	if escape{
	state=state_pause;	
	}
	if buf {
	state = state_buf;	
	}
		if loon {
		state = state_loon;
	}
	show_debug_message("break");
	sprite_index = spr_canoebreak;
if (speed>0) {
if (speed-0.2)>0{
speed-=0.1;	
}
else {
speed =0;	
}
}
else {
speed = 0;
}
if (speed == 0) {
state=state_idle;	
}
}


/////////// loon//////

state_loon =function(){

	show_debug_message("loon")
	if playingloon==false{
	var loon_inst = instance_place(x,y,obj_loon);
		instance_destroy(loon_inst);
	speed=0;
	instance_create_layer(x,y, "game", obj_game);
	playingloon=true;
	}
	
	
	if (instance_exists(obj_game)==0){
	playingloon=false;
	state=state_idle;	
	}
}

///////buf///////
state_buf =function(){
	if onisland{
	state=state_victory;	
	}
speed=0;
if shielded==false{
layer_set_visible(lay_id, true);
shielded=false;
}
else{
instance_destroy(obj_shield);

}
direction = direction+180;
x=x+lengthdir_x(120, direction);
y=y+lengthdir_y(120, direction);
if place_meeting(x,y,obj_bul){
	x=2800;
	y=700;
}
alarm[0]=30;
 state=state_idle;
	
}

///////////gameover//////////////////
state_gameover=function(){
	speed=0;
	if checkpoint==true {
	y=4000;
	x=600;
	}
	else{
	x=600;
	y=7600;
	}
	hp=6;
	obj_health.rank="D";
	state= state_idle;
}


//////////victory/////////////
state_victory=function(){
	speed=0;
	direction=0;
	x=715;
	y=267;
	sprite_index=spr_virgil;
	if victory==false{
	audio_play_sound(sn_victory,8,0);
	alarm[3]=360;
	victory=true;
	}
	instance_create_layer(752,332,"Instances", obj_empty);
	
}

////////pause//////
state_pause= function(){
	speed=0;
	if keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any){
		state=state_idle;
	}
}


state = state_pause;