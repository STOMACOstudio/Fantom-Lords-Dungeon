/// @description Insert description here
// You can write your code in this editor

if !global.armor
{
	audio_play_sound(snClick,0,false);
	global.ancestry = false;
	global.armor = true;
	global.BG = false;
	global.headgear = false;
	global.relic = false;
	global.weapon = false;
}