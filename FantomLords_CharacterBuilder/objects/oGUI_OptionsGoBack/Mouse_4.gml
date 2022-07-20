/// @description Insert description here
// You can write your code in this editor

if instance_exists(oGUI_OptionsGear) && !oGUI_OptionsGear.showControls
{
	audio_play_sound(snClick,0,false);
	room_goto(Room1);
}
else room_goto(Room1);