/// @desc
if collision_rectangle(x+size,y+size,x-size,y-size,obj_avery,false,true){
sprite_index=spr_e;
}
else
{
	sprite_index=spr_blank;
}
  
  
if sprite_index==spr_e and keyboard_check_pressed(ord("E")){
	if alarm1 {
		 instance_create_layer(x,y,"text",obj_text_alarm)
	}
	if art {
		 instance_create_layer(x,y,"text",obj_text_art)
	}
	if tv {
		 instance_create_layer(x,y,"text",obj_text_tv)
	}  
	if soccer {
		 instance_create_layer(x,y,"text",obj_text_soccer)
	} 
	if math {
		 instance_create_layer(x,y,"text",obj_text_math)
	} 
	if paycheck {
		 instance_create_layer(x,y,"text",obj_text_paycheck)
	} 
	    if ice {
		 instance_create_layer(x,y,"text",obj_text_ice)
	}
	if mail {
	instance_create_layer(x,y,"text", obj_text_mail );	
	}
	
} 