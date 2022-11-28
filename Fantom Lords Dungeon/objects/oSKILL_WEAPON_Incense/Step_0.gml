/// @description Insert description here
// You can write your code in this editor

if done = true
{
	image_alpha = 0;
	
	if targetLord != noone
	{
		targetLord.thisLord_LIF += dmg;
		if targetLord.thisLord_LIF > targetLord.thisLord_LIFmax targetLord.thisLord_LIF = targetLord.thisLord_LIFmax;
		targetLord.weaken = 0;
		targetLord.stun = 0;
		instance_create_layer(targetLord.x,targetLord.y,"VFX",oGUI_printHEAL);
	}
	else if targetEnemy != noone
	{
		targetEnemy.thisLIF += dmg;
		if targetEnemy.thisLIF > targetEnemy.thisLord_LIFmax targetEnemy.thisLord_LIF = targetEnemy.thisLord_LIFmax;
		targetEnemy.weaken = 0;
		targetEnemy.stun = 0;
		instance_create_layer(targetEnemy.x,targetEnemy.y,"VFX",oGUI_printHEAL);
		targetEnemy.poison = false;
		targetEnemy.stun = false;
		targetEnemy.weaken = 0;
		targetEnemy.sleep = 0;
	}
	
	global.hasControl = true;
	instance_destroy();
}