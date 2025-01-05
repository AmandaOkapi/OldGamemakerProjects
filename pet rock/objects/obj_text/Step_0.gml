/// @desc

if mouse_check_button_pressed(mb_any) 
{
	if position_meeting(mouse_x, mouse_y, obj_text){
		if first_click==false{
			text="";
		first_click=true;
		}
	cantype=true;
	keyboard_string = text;
	}
	else
	{
	cantype=false;	
	}
}

if cantype==true{
if(keyboard_check(vk_anykey) and string_length(text) < 20)
{
    text = string(keyboard_string);
}
if(keyboard_check_pressed(vk_backspace))
{
    text = string_delete(text,string_length(text),1);
    keyboard_string = "";
}
}