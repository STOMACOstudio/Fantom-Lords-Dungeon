/// @description Insert description here
// You can write your code in this editor

if done = true
{
	image_alpha = 0;
	
	if targetLord != noone
	{
		targetLord.thisLord_LIF += dmg;
		if targetLord.thisLord_LIF > targetLord.thisLord_LIFmax targetLord.thisLord_LIF = targetLord.thisLord_LIFmax;
		if (targetLord.weaken > 0)
		{
			targetLord.weaken = 0;
			if (!targetLord.berserk) { targetLord.thisLord_ATK = thisLord_ATKmax; }
			if (!targetLord.burden && !targetLord.tower) { targetLord.thisDEF = thisLord_DEFmax; }
			targetLord.thisMAG = thisLord_MAGmax;
		}
		targetLord.stun = 0;
		if (targetLord.berserk)
		{
			if (!targetLord.weaken) { targetLord.thisLord_ATK = targetLord.thisLord_ATKmax }
			targetLord.berserk = false;
		}
		instance_create_layer(targetLord.x,targetLord.y,"VFX",oGUI_printHEAL);
	}
	else if targetEnemy != noone
	{
		targetEnemy.thisLIF += dmg;
		if targetEnemy.thisLIF > targetEnemy.thisLord_LIFmax targetEnemy.thisLord_LIF = targetEnemy.thisLord_LIFmax;
		if (targetEnemy.berserk)
		{
			if (!targetEnemy.weaken) { targetEnemy.thisATK = targetEnemy.thisATKmax }
			targetEnemy.berserk = false;
		}
		if (targetEnemy.weaken > 0)
		{
			targetEnemy.weaken = 0;
			if (!targetEnemy.berserk) { targetEnemy.thisATK = thisATKmax; }
			targetEnemy.thisDEF = thisDEFmax;
			targetEnemy.thisMAG = thisMAGmax;
		}
		targetEnemy.stun = false;
		targetEnemy.poison = false;
		targetEnemy.sleep = 0;
		instance_create_layer(targetEnemy.x,targetEnemy.y,"VFX",oGUI_printHEAL);
	}
	
	global.hasControl = true;
	instance_destroy();
}