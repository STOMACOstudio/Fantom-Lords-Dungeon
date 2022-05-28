/// @description Insert description here
// You can write your code in this editor

if global.fightMode
{
	scrLordMovement();
}
else scrLordMovementFree();

if thisLord_LIF <= 0
{
	instance_create_layer(oGUI_LordFrame1.x,oGUI_LordFrame1.y,"BG",oGUI_deathLord);
	instance_destroy(oGUI_ACTpoints1);
	instance_destroy(oGUI_LordFrame1);
	instance_destroy(oGUI_lordHealthFront1);
	instance_destroy(oGUI_lordHealthPrint1);
	oLordStats.lord1active = false;
	global.isLocked = false;
	instance_destroy();
}

if thisLocked
{
	if !instance_exists(oVFX_spellCast1) scrLordCheckTarget();
}