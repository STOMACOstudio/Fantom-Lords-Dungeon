/// @description Insert description here
// You can write your code in this editor

if !empty && oGUI_lordBlock4.empty
{
	audio_play_sound(snRemoveLord,0,false);
	oLordStats.lord3active = false;
	sprite_index = sGUI_addLord;
	image_xscale = 1;
	image_yscale = 1;
	sprite_delete(sLord3);
	oLordStats.lord3sprite = "none";
	oLordStats.lord3LIF = 0;
	oLordStats.lord3LIFmax = 0;
	oLordStats.lord3ATK = 0;
	oLordStats.lord3ATKmax = 0;
	oLordStats.lord3DEF = 0;
	oLordStats.lord3DEFmax = 0;
	oLordStats.lord3MAG = 0;
	oLordStats.lord3MAGmax = 0;
	oLordStats.lord3ACT = 0;
	oLordStats.lord3ACTmax = 0;
	oLordStats.lord3typeAttack = "none";
	oLordStats.lord3skillClassArmor = 0;
	oLordStats.lord3skillWeapon = 0;
	empty = true;
}