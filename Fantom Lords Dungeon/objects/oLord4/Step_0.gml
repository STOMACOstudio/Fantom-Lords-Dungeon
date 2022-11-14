/// @description Insert description here
// You can write your code in this editor

if global.fightMode
{
	scrLordMovement();
}
else scrLordMovementFree();

if thisLord_LIF <= 0
{
	instance_create_layer(oGUI_LordFrame4.x,oGUI_LordFrame4.y,"bG",oGUI_deathLord);
	instance_destroy(oGUI_ACTpoints4);
	instance_destroy(oGUI_LordFrame4);
	instance_destroy(oGUI_lordHealthFront4);
	instance_destroy(oGUI_lordHealthPrint4);
	oLordStats.lord4active = false;
	global.isLocked = false;
	instance_destroy();
}

if thisLocked
{
	if !instance_exists(oVFX_spellCast1) scrLordCheckTarget();
}

thisLord_level = thisLord_LIFmax + thisLord_ATK + thisLord_DEF + thisLord_MAG + thisLord_ACT;