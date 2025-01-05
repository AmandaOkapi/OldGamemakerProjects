if (obj_canoe.state!=obj_canoe.state_loon)  and 	obj_canoe.image_alpha !=0.5 {
	
if collision_circle(x, y, 200, obj_canoe, false, true) and attack==false{
 instance_create_layer(x,y, "rocks", obj_rock);
 alarm[0] =irandom_range(100,400);
 attack=true;
}

	
}

