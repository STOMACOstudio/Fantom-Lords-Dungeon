/// @description Insert description here
// You can write your code in this editor

if !global.gameOver
{
	audio_play_sound(snCombat,0,false);
	global.hasControl = false;
	hspeed -= 1;
	alarm[0] = 50;
}
else instance_destroy();
