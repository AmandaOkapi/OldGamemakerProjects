/// @desc
key_left=keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right=keyboard_check(vk_right) or keyboard_check(ord("D"));

if (key_right-key_left!=0){
instance_destroy();	
}