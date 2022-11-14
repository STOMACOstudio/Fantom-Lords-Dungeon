/// @description Insert description here
// You can write your code in this editor

if global.fightMode
{
	scrLordMovement();
}
else scrLordMovementFree();

if thisLord_LIF <= 0
{
	instance_create_layer(oGUI_LordFrame3.x,oGUI_LordFrame3.y,"bG",oGUI_deathLord);
	instance_destroy(oGUI_ACTpoints3);
	instance_destroy(oGUI_LordFrame3);
	instance_destroy(oGUI_lordHealthFront3);
	instance_destroy(oGUI_lordHealthPrint3);
	oLordStats.lord3active = false;
	global.isLocked = false;
	instance_destroy();
}

if thisLocked
{
	if !instance_exists(oVFX_spellCast1) scrLordCheckTarget();
}

thisLord_level = thisLord_LIFmax + thisLord_ATK + thisLord_DEF + thisLord_MAG + thisLord_ACT;