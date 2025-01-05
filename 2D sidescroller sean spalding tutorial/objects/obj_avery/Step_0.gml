/// @desc
/// @description player

//get input
key_left=keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right=keyboard_check(vk_right) or keyboard_check(ord("D"));
key_space=keyboard_check_pressed(vk_space);
interact= keyboard_check_pressed(ord("E"));

if key_space and state==state_idle{ 
state=state_free;	
}

on_ground=place_meeting(x,y+1, obj_wall)
//get collisions
//colliding= place_meeting(x,y+vsp, obj_wall);

//if interact{
//instance_create_layer(x,y,"player", obj_text);	
//}
state();
