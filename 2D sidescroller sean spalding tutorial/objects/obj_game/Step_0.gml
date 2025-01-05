/// @desc

if (keyboard_check_pressed(ord("R"))){
game_restart();
}

if room==rm_title and mouse_check_button_pressed(mb_left) {
	room=rm_game;
}