/// @description Insert description here
// You can write your code in this editor

if (sleep > 0 || crystalized) image_speed = 0;
else image_speed = 1;

scrEnemyLIFcounter();

if isSelected && revealed
{
	scrEnemyPrintStats();
	global.currentSelectedDescription1 = "Green and big,";
	global.currentSelectedDescription2 = "comes with a";
	global.currentSelectedDescription3 = "surprise.";
	global.currentStatusColor = statusColor;
}

if isFighting && !turnComplete && actions > 0
{
	if (!stun && !crystalized && sleep = 0)
	{
		scrEnemyCheckForTiles(); //check all close lords and tiles
		canMove = false;
	
		if actions >= 2
		{
			if (lordTop != noone && lordTop.shadow = 0) || (lordRight != noone && lordRight.shadow = 0) || (lordDown != noone && lordDown.shadow = 0) || (lordLeft != noone && lordLeft.shadow = 0)
			{
				var chooseAttack = irandom_range(0,3);
				
				if chooseAttack = 3 && actions >=3
				{
					actionsRate = 3;
					var struct = {dmg : thisMAG/2};
				
					if collision_point(x-32,y-32,oLord0Parent,false,true) instance_create_layer(x-64,y-64,"VFX",oVFX_BossFlanSpell,struct);
					if collision_point(x+32,y-32,oLord0Parent,false,true) instance_create_layer(x,y-64,"VFX",oVFX_BossFlanSpell,struct);
					if collision_point(x+96,y-32,oLord0Parent,false,true) instance_create_layer(x+64,y-64,"VFX",oVFX_BossFlanSpell,struct);
					if collision_point(x+96,y+32,oLord0Parent,false,true) instance_create_layer(x+64,y,"VFX",oVFX_BossFlanSpell,struct);
					if collision_point(x+96,y+96,oLord0Parent,false,true) instance_create_layer(x+64,y+64,"VFX",oVFX_BossFlanSpell,struct);
					if collision_point(x+32,y+96,oLord0Parent,false,true) instance_create_layer(x,y+64,"VFX",oVFX_BossFlanSpell,struct);
					if collision_point(x-32,y+96,oLord0Parent,false,true) instance_create_layer(x-64,y+64,"VFX",oVFX_BossFlanSpell,struct);
					if collision_point(x-32,y+32,oLord0Parent,false,true) instance_create_layer(x-64,y,"VFX",oVFX_BossFlanSpell,struct);
					audio_play_sound(snBossFlanSpell,0,false);
					isFighting = false;
	
					alarm[0] = alarmCounter+25;
				}
				else
				{
					actionsRate = 2;
					dmgTYPE = thisMAG;
					scrEnemyCheckForLords(); //choose a random lord to attack
				}
			}
			else
			{
				actionsRate = 1;
				scrEnemyMoveChoice(); //if lord is near, move closer; else move random
			}
		}
		else
		{
			actionsRate = 1;
		
			if lordTop != noone || lordRight != noone || lordDown != noone || lordLeft != noone scrEnemyForceEndTurn();
			else scrEnemyForceEndTurn();
		}
	}
	else
	{
		if stun stun = false
		if sleep > 0 sleep --;
		scrEnemyForceEndTurn();
	}
}