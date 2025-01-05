/// @desc
if (i<=6){
show_debug_message("hi")
audio_play_sound(sn_text,3,true);
letters=0;
i+=1;
//text[i] = "lol k tim";
length = string_length(text[i]);
text_current = "";
done=false;
if obj_tim.image_index==0{
	obj_tim.image_index=1;
}
else{
	obj_tim.image_index=0;
}
}
else{
audio_stop_sound(sn_text);
room_goto_next();	
}