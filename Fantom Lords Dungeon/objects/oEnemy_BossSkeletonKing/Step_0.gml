/// @description Insert description here
// You can write your code in this editor

if sleep > 0 image_speed = 0;
else image_speed = 1;

scrEnemyLIFcounter();

if isSelected && revealed
{
	scrEnemyPrintStats();
	global.currentSelectedDescription1 = "The king of";
	global.currentSelectedDescription2 = "the undead ";
	global.currentSelectedDescription3 = "can summon.";
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
		if (lordTop != noone && lordTop.shadow = 0) || (lordRight != noone && lordRight.shadow = 0) || (lordDown != noone && lordDown.shadow = 0) || (lordLeft != noone && lordLeft.shadow = 0)
		{
			var chooseAttack = irandom(3);
			
			if chooseAttack = 3 && actions >= 3
			{
				show_debug_message("summon");
				
				actionsRate = 3;
				chooseTarget = irandom_range(0,7);
	
				if (chooseTarget = 0 && collision_point(x-32,y-32,oMap_0parent,false,true).empty)
				{
					instance_create_layer(x-64,y-64,"VFX",oVFX_EnemyRise);
					isFighting = false;
					alarm[0] = alarmCounter;
				}
				if (chooseTarget = 1 && collision_point(x+32,y-32,oMap_0parent,false,true).empty)
				{
					instance_create_layer(x,y-64,"VFX",oVFX_EnemyRise);
					isFighting = false;
					alarm[0] = alarmCounter;
				}
				if (chooseTarget = 2 && collision_point(x+96,y-32,oMap_0parent,false,true).empty)
				{
					instance_create_layer(x+64,y-64,"VFX",oVFX_EnemyRise);
					isFighting = false;
					alarm[0] = alarmCounter;
				}
				if (chooseTarget = 3 && collision_point(x+96,y+32,oMap_0parent,false,true).empty)
				{
					instance_create_layer(x+64,y,"VFX",oVFX_EnemyRise);
					isFighting = false;
					alarm[0] = alarmCounter;
				}
				if (chooseTarget = 4 && collision_point(x+96,y+96,oMap_0parent,false,true).empty)
				{
					instance_create_layer(x+64,y+64,"VFX",oVFX_EnemyRise);
					isFighting = false;
					alarm[0] = alarmCounter;
				}
				if (chooseTarget = 5 && collision_point(x+32,y+96,oMap_0parent,false,true).empty)
				{
					instance_create_layer(x,y+64,"VFX",oVFX_EnemyRise);
					isFighting = false;
					alarm[0] = alarmCounter;
				}
				if (chooseTarget = 6 && collision_point(x-32,y+96,oMap_0parent,false,true).empty)
				{
					instance_create_layer(x-64,y+64,"VFX",oVFX_EnemyRise);
					isFighting = false;
					alarm[0] = alarmCounter;
				}
				if (chooseTarget = 7 && collision_point(x-32,y+32,oMap_0parent,false,true).empty)
				{
					instance_create_layer(x-64,y,"VFX",oVFX_EnemyRise);
					isFighting = false;
					alarm[0] = alarmCounter;
				}
				
			}
			else
			{
				show_debug_message("attack");
				actionsRate = 2;
				dmgTYPE = thisATK;
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