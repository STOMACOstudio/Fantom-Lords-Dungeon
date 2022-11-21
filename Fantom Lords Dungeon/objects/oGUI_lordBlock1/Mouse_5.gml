/// @description Insert description here
// You can write your code in this editor

if !empty && oGUI_lordBlock2.empty && oGUI_lordBlock3.empty && oGUI_lordBlock4.empty
{
	audio_play_sound(snRemoveLord,0,false);
	lord1active = false;
	oLordStats.lord1ascend = false;
	sprite_index = sGUI_addLord;
	image_xscale = 1;
	image_yscale = 1;
	sprite_delete(sLord1);
	oLordStats.lord1sprite = "none";
	oLordStats.lord1LIF = 0;
	oLordStats.lord1LIFmax = 0;
	oLordStats.lord1ATK = 0;
	oLordStats.lord1ATKmax = 0;
	oLordStats.lord1DEF = 0;
	oLordStats.lord1DEFmax = 0;
	oLordStats.lord1MAG = 0;
	oLordStats.lord1MAGmax = 0;
	oLordStats.lord1ACT = 0;
	oLordStats.lord1ACTmax = 0;
	oLordStats.lord1typeAttack = "none";
	oLordStats.lord1skillClassArmor = 0;
	oLordStats.lord1skillWeapon = 0;
	oLordStats.lord1name = "Lord 1";
	
	empty = true;
}