/// @desc
//if player is attacking remove health and ass flash animation
if obj_avery.sprite_index==spr_avery_attack{
	show_debug_message("yes");
	healthh=healthh-strength;
	image_speed=1;
}
else
{
	image_speed=0;
}