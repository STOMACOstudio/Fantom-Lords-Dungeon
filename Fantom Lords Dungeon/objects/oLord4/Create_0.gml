/// @description Insert description here
// You can write your code in this editor
event_inherited();

if oLordStats.lord4active
{
	thisLocked = false;
	thisLord_ascend = oLordStats.lord4ascend = true;
	thisLord_name = oLordStats.lord4name;
	thisLord_LIF = oLordStats.lord4LIF;
	thisLord_LIFmax = oLordStats.lord4LIFmax;
	thisLord_ATK = oLordStats.lord4ATK;
	thisLord_ATKmax = oLordStats.lord4ATKmax;
	thisLord_DEF = oLordStats.lord4DEF;
	thisLord_DEFmax = oLordStats.lord4DEFmax;
	thisLord_MAG = oLordStats.lord4MAG;
	thisLord_MAGmax = oLordStats.lord4MAGmax;
	thisLord_ACT = oLordStats.lord4ACT;
	thisLord_ACTmax = oLordStats.lord4ACTmax;
	thisLord_ACTpoints = round((thisLord_ACT)/5);
	if thisLord_ACTpoints < 2 thisLord_ACTpoints = 2;
	thisLord_ACTpointsMAX = round((thisLord_ACT)/5);
	if thisLord_ACTpointsMAX < 2 thisLord_ACTpointsMAX = 2;
	thisLord_typeAttack = oLordStats.lord4typeAttack;
	thisLord_skillClassArmor = oLordStats.lord4skillClassArmor;
	thisLord_skillWeapon = oLordStats.lord4skillWeapon;
	thisLord_level = thisLord_LIFmax + thisLord_ATK + thisLord_DEF + thisLord_MAG + thisLord_ACT;
	sprite_index = oLordStats.lord4sprite;
	image_xscale /= 5;
	image_yscale /= 5;
	dmgLORD = 0;
	
	if (thisLord_ascend)
	{
		oGUI_skill2Lord4.sprite_index = sGUI_skillClassArmorAscended;
		oGUI_skill3Lord4.sprite_index = sGUI_skillWeaponAscended;
	}

	#region attack and movement
	enemy = noone;
	instTopLeft = noone;
	instTop = noone;
	instTopRight = noone;
	instRight = noone;
	instDownRight = noone;
	instDown = noone;
	instDownLeft = noone;
	instLeft = noone;
	enemyTopTop = noone;
	enemyRightRight = noone;
	enemyDownDown = noone;
	enemyLeftLeft = noone;
	enemyTopLeft = noone;
	enemyTop = noone;
	enemyTopRight = noone;
	enemyRight = noone;
	enemyDownRight = noone;
	enemyDown = noone;
	enemyDownLeft = noone;
	enemyLeft = noone;
	WarFogTopLeft = noone;
	WarFogTop = noone;
	WarFogTopRight = noone;
	WarFogRight = noone;
	WarFogDownRight = noone;
	WarFogDown = noone;
	WarFogDownLeft = noone;
	WarFogLeft = noone;
	lastX = 0;
	lastY = 0;
	#endregion

	spellCast = -1;
	
	scrLordStatus()
}
else instance_destroy();

/////////////////////////////////////////////// NEW SECTION ////////////////////////////////////////////////////////

// variables that depend on a specific lord
gui_lord_frame = oGUI_LordFrame4;
gui_death_lord = oGUI_deathLord;
gui_act_points = oGUI_ACTpoints4;
gui_lord_health_front = oGUI_lordHealthFront4;
gui_lord_health_print = oGUI_lordHealthPrint4;
lord_number = "4";
vfx_spell_cast = oVFX_spellCast1;

init();