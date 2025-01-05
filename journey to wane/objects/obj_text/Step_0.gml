/// @desc progress text
if keyboard_check_pressed(vk_enter){
audio_stop_sound(sn_text);
room_goto_next();	
}


letters+=spd;

text_current = string_copy(text[i], 1,floor(letters));

draw_set_font(Font2);

if (letters>=length){
	audio_stop_sound(sn_text);
	if done==false{
alarm[0]=120;
done=true;
	}
}