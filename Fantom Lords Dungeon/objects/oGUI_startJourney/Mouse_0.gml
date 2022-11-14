/// @description Insert description here
// You can write your code in this editor

if !oGUI_lordBlock1.empty
{
	audio_play_sound(snClick,0,false);
	room_goto(Room3_Prison);
	global.roomType = "Prison";
	//global.roomCounter = 1;
	//room_goto(Room4_Boss);
}