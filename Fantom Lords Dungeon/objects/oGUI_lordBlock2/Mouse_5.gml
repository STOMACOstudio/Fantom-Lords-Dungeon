/// @description Insert description here
// You can write your code in this editor

if !empty && oGUI_lordBlock3.empty && oGUI_lordBlock4.empty
{
	audio_play_sound(snRemoveLord,0,false);
	oLordStats.lord2active = false;
	oLordStats.lord2ascend = false;
	sprite_index = sGUI_addLord;
	image_xscale = 1;
	image_yscale = 1;
	sprite_delete(sLord2);
	oLordStats.lord2sprite = "none";
	oLordStats.lord2LIF = 0;
	oLordStats.lord2LIFmax = 0;
	oLordStats.lord2ATK = 0;
	oLordStats.lord2ATKmax = 0;
	oLordStats.lord2DEF = 0;
	oLordStats.lord2DEFmax = 0;
	oLordStats.lord2MAG = 0;
	oLordStats.lord2MAGmax = 0;
	oLordStats.lord2ACT = 0;
	oLordStats.lord2ACTmax = 0;
	oLordStats.lord2typeAttack = "none";
	oLordStats.lord2skillClassArmor = 0;
	oLordStats.lord2skillWeapon = 0;
	oLordStats.lord2name = "Lord 2";
	oLordStats.lord2bg = 0;
	empty = true;
}