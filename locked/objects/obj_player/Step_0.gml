/// @desc core player logic

//get player input

if (keyboard_check_pressed(ord("K"))){
	game_restart();
}
key_left= keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"))
key_space= keyboard_check_pressed(vk_space);

if (!right_unlocked) {
	key_right= right_unlocked;
}
if (!left_unlocked) {
	key_left= left_unlocked;
}
if (!space_unlocked) {
	key_space= space_unlocked;
}


//animate l/r keys

obj_leftkey.image_index=key_left;
obj_rightkey.image_index=key_right;

var _move = key_right - key_left;

hsp= _move * walkspd;

vsp= vsp+ grv;

//jump
if(place_meeting(x,y+sign(vsp), obj_wall)) or (place_meeting(x,y+sign(vsp), obj_platform)) or (place_meeting(x,y+sign(vsp), obj_mplatform)) {
	
grounded=true;
}
else{
grounded=false;
}

if(grounded==true) and (key_space) and (jumpdelay<=0) {
	vsp= -jump;

jumpdelay=jumpdelayleng;

}





//horizontal collison
if (place_meeting(x+hsp, y, obj_wall)) {
	while (!place_meeting(x+sign(hsp),y, obj_wall)) {
		x += sign(hsp);
	}
	hsp=0;
}

//vertical collison
if (place_meeting(x,y+vsp, obj_wall)) {
	while (!place_meeting(x,y +sign(vsp), obj_wall)) {
		y += sign(vsp);
	}
	if (sign(vsp)==-1){
		jumpdelay -=jumpdelay/2;
	}
	vsp=0;
}

//platform collison
if (place_meeting(x,y+vsp, obj_platform)) and vsp==-1 {
	if (!place_meeting(x+sign(hsp),y, obj_platform))
	while (!place_meeting(x,y +sign(vsp), obj_platform)) {
		y += sign(vsp);
	}
	
	vsp=0;
}




//player animation
if (sign(hsp) != 0) {
	image_xscale = sign(hsp);
}

//jump alarmm
if jumpdelay>=0 {
	jumpdelay=jumpdelay-1;
}



x= x+hsp
	y= y +vsp;

//if (movingplat==true) {
	//y+= obj_mplatform.vsp;
	
//}
//else {

//}