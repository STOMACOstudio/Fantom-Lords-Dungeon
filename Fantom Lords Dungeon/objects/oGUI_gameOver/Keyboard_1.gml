/// @description Insert description here
// You can write your code in this editor

if (image_alpha >=1)
{
	show_debug_message("audio not stop");
	audio_stop_all();
	show_debug_message("audio stop!");
	//game_restart();
	instance_destroy(oManagerGame);
	instance_destroy(oLordStats);
	instance_destroy(oGUI_deathLord);
	room_goto(Room0);
	show_debug_message("goto room 0");
}