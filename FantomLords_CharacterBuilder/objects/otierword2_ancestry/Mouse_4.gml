/// @description Insert description here
// You can write your code in this editor

if !global.ancestry
{
	audio_play_sound(snClick,0,false);
	global.ancestry = true;
	global.armor = false;
	global.BG = false;
	global.headgear = false;
	global.relic = false;
	global.weapon = false;
}