/// @description Insert description here
// You can write your code in this editor

if global.fightMode
{
	scrLordMovement();
}
else scrLordMovementFree();

if thisLord_LIF <= 0
{
	instance_create_layer(oGUI_LordFrame2.x,oGUI_LordFrame2.y,"bG",oGUI_deathLord);
	instance_destroy(oGUI_ACTpoints2);
	instance_destroy(oGUI_LordFrame2);
	instance_destroy(oGUI_lordHealthFront2);
	instance_destroy(oGUI_lordHealthPrint2);
	oLordStats.lord2active = false;
	global.isLocked = false;
	instance_destroy();
}

if thisLocked
{
	if !instance_exists(oVFX_spellCast1) scrLordCheckTarget();
}