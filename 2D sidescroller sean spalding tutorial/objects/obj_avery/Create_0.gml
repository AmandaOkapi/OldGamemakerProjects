 /// @desc define key variables
spd=4;
grv=0.2;
jump=-5;
hsp=0;
vsp=0;
alrm_speed=300;
alrm=0;
animationend=false;
//state machine

state_idle= function(){

if alrm>=0 and alrm<alrm_speed {
sprite_index=spr_avery_idle;
alrm=alrm+1;	
//show_debug_message("idle")
}
if alrm>=alrm_speed{
	sprite_index=spr_avery_idle2;
}
//attack
if mouse_check_button_pressed(mb_left) and (on_ground){
state=state_attack;	
}
if (key_right-key_left!=0) or !on_ground{
alrm=0;     
state=state_free	
}
} 


state_free=function(){

show_debug_message("free");

var move= key_right-key_left;
hsp=move*spd;


vsp=vsp+grv;
if (key_space) and on_ground{
	vsp=jump;
	show_debug_message("jump");
	on_ground=false;
}

//vertical collisions       
colliding= place_meeting(x,y+vsp, obj_wall);
 
if (colliding){
while (!place_meeting(x,y+sign(vsp), obj_wall))
{
    y=y+sign(vsp);
}
vsp=0;

}
hcolliding= place_meeting(x+hsp,y, obj_wall);
 
if (hcolliding){
while (!place_meeting(x+sign(hsp),y, obj_wall))
{
    x=x+sign(hsp);
}
hsp=0;

}


if (vsp==0){
	sprite_index=spr_avery_walk;
}

if (!on_ground){
if sign(vsp)>0{
	sprite_index=spr_avery_jump_fall;
}
else
{
	sprite_index=spr_avery_jump;
}
}
//horizontally flip sprite based on direction
if sign(hsp)!=0 {
	image_xscale=sign(hsp)
	}

y=y+vsp;
x=x+hsp;

if interact and obj_e.sprite_index=spr_e{
	state=state_interact;
}
//attack
if mouse_check_button_pressed(mb_left) and (on_ground){
state=state_attack;	
}
	if (hsp==0) and (vsp==0){
		state=state_idle;
	}
}




state_attack=function(){
	show_debug_message("attack");
	
	if sprite_index!=spr_avery_attack{
	sprite_index=spr_avery_attack;
	image_index=0;
	}
	mask_index=spr_avery_attackHB;
	
	
	if (animationend==true){
		mask_index=spr_avery_idle;
		animationend=false;
	state=state_idle;	
	}
}

state_interact=function(){
	if (key_right-key_left!=0) or !on_ground{  
state=state_free	
}
}

//initial state
state=state_free;
