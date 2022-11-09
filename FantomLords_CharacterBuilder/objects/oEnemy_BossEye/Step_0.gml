/// @description Insert description here
// You can write your code in this editor

show_debug_message(string(actions));

if sleep > 0 image_speed = 0;
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
	if !stun && sleep = 0
	{
		scrEnemyCheckForTiles(); //check all close lords and tiles
		canMove = false;
	
		if actions >= 2
		{
			if (lordRightRightDownDown != noone && lordRightRightDownDown.shadow = 0) || (lordRightRightRightDown != noone && lordRightRightRightDown.shadow = 0) || (lordDownDownDownRight != noone && lordDownDownDownRight.shadow = 0) || (lordTopTopRightRight != noone && lordTopTopRightRight.shadow = 0) || (lordRightRightRightTop != noone && lordRightRightRightTop.shadow = 0) || (lordRightRightRightDownDown != noone && lordRightRightRightDownDown.shadow = 0) || (lordDownDownDownRightRight != noone && lordDownDownDownRightRight.shadow = 0) || (lordDownDownDownLeft != noone && lordDownDownDownLeft.shadow = 0) || (lordLeftLeftDownDown != noone && lordLeftLeftDownDown.shadow = 0) || (lordTopTopTopRight != noone && lordTopTopTopRight.shadow = 0) || (lordRightRightRightRight != noone && lordRightRightRightRight.shadow = 0) || (lordRightRightRightRightDown != noone && lordRightRightRightRightDown.shadow = 0) || (lordDownDownDownDown != noone && lordDownDownDownDown.shadow = 0) || (lordDownDownDownDownRight != noone && lordDownDownDownDownRight.shadow = 0) || (lordRight != noone && lordLeftLeftLeftDown.shadow = 0)
			{
				var chooseAttack = irandom_range(0,3);
				if chooseAttack = 3 && actions >=3
				{
					actionsRate = 3;
					var struct = {dmg : thisMAG/2};
				
					if collision_point(x-32,y-32,oLord0Parent,false,true) instance_create_layer(x-64,y-64,"VFX",oVFX_BossFlanSpell,struct);
					if collision_point(x+32,y-32,oLord0Parent,false,true) instance_create_layer(x,y-64,"VFX",oVFX_BossFlanSpell,struct);
					if collision_point(x+96,y-32,oLord0Parent,false,true) instance_create_layer(x+64,y-64,"VFX",oVFX_BossFlanSpell,struct);
					if collision_point(x+160,y-32,oLord0Parent,false,true) instance_create_layer(x+128,y-64,"VFX",oVFX_BossFlanSpell,struct);
					if collision_point(x+160,y+32,oLord0Parent,false,true) instance_create_layer(x+128,y,"VFX",oVFX_BossFlanSpell,struct);
					if collision_point(x+160,y+96,oLord0Parent,false,true) instance_create_layer(x+128,y+64,"VFX",oVFX_BossFlanSpell,struct);
					if collision_point(x+160,y+160,oLord0Parent,false,true) instance_create_layer(x+128,y+128,"VFX",oVFX_BossFlanSpell,struct);
					if collision_point(x+96,y+160,oLord0Parent,false,true) instance_create_layer(x+64,y+128,"VFX",oVFX_BossFlanSpell,struct);
					if collision_point(x+32,y+160,oLord0Parent,false,true) instance_create_layer(x,y+128,"VFX",oVFX_BossFlanSpell,struct);
					if collision_point(x-32,y+160,oLord0Parent,false,true) instance_create_layer(x-64,y+128,"VFX",oVFX_BossFlanSpell,struct);
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
					scrBossCheckForLords(); //choose a random lord to attack
				}
			}
			else
			{
				actionsRate = 1;
				scrBossMoveChoice(); //if lord is near, move closer; else move random
			}
		}
		else
		{
			actionsRate = 1;
		
			if lordTop != noone || lordTopRight != noone || lordRightRight != noone || lordRightRightDown != noone || lordDownDownRight != noone || lordDownDown != noone || lordLeft != noone || lordDownLeft != noone scrEnemyForceEndTurn();
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