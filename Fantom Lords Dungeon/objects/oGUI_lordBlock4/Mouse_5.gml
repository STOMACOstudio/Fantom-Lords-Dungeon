/// @description Insert description here
// You can write your code in this editor

if !empty
{
	audio_play_sound(snRemoveLord,0,false);
	oLordStats.lord4active = false;
	oLordStats.lord4ascend = false;
	sprite_index = sGUI_addLord;
	image_xscale = 1;
	image_yscale = 1;
	sprite_delete(sLord4);
	oLordStats.lord4sprite = "none";
	oLordStats.lord4LIF = 0;
	oLordStats.lord4LIFmax = 0;
	oLordStats.lord4ATK = 0;
	oLordStats.lord4ATKmax = 0;
	oLordStats.lord4DEF = 0;
	oLordStats.lord4DEFmax = 0;
	oLordStats.lord4MAG = 0;
	oLordStats.lord4MAGmax = 0;
	oLordStats.lord4ACT = 0;
	oLordStats.lord4ACTmax = 0;
	oLordStats.lord4typeAttack = "none";
	oLordStats.lord4skillClassArmor = 0;
	oLordStats.lord4skillWeapon = 0;
	oLordStats.lord4name = "Lord 4";
	empty = true;
}