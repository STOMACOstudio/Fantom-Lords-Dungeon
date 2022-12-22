/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord2active
{
	thisLocked = false;
	thisLord_ascend = oLordStats.lord2ascend = true;
	thisLord_name = oLordStats.lord2name;
	thisLord_LIF = oLordStats.lord2LIF;
	thisLord_LIFmax = oLordStats.lord2LIFmax;
	thisLord_ATK = oLordStats.lord2ATK;
	thisLord_ATKmax = oLordStats.lord2ATKmax;
	thisLord_DEF = oLordStats.lord2DEF;
	thisLord_DEFmax = oLordStats.lord2DEFmax;
	thisLord_MAG = oLordStats.lord2MAG;
	thisLord_MAGmax = oLordStats.lord2MAGmax;
	thisLord_ACT = oLordStats.lord2ACT;
	thisLord_ACTmax = oLordStats.lord2ACTmax;
	thisLord_ACTpoints = round((thisLord_ACT)/5);
	if thisLord_ACTpoints < 2 thisLord_ACTpoints = 2;
	thisLord_ACTpointsMAX = round((thisLord_ACT)/5);
	if thisLord_ACTpointsMAX < 2 thisLord_ACTpointsMAX = 2;
	thisLord_typeAttack = oLordStats.lord2typeAttack;
	thisLord_skillClassArmor = oLordStats.lord2skillClassArmor;
	thisLord_skillWeapon = oLordStats.lord2skillWeapon;
	thisLord_level = thisLord_LIFmax + thisLord_ATK + thisLord_DEF + thisLord_MAG + thisLord_ACT;
	sprite_index = oLordStats.lord2sprite;
	image_xscale /= 5;
	image_yscale /= 5;
	dmgLORD = 0;
	
	if (thisLord_ascend)
	{
		oGUI_skill2Lord2.sprite_index = sGUI_skillClassArmorAscended;
		oGUI_skill3Lord2.sprite_index = sGUI_skillWeaponAscended;
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
	
	#region lord status
	battlecry = 0;
	burden = 0;
	shadow = 0;
	weaken = 0;
	stun = 0;
	tower = 0;
	matchupType = "none";
	matchup = 0;
	royalBuff = 0;
	agility = 0;
	berserk = false;
	#endregion
}
else instance_destroy();