/// @description Insert description here
// You can write your code in this editor

if revealed image_alpha = 1;
else image_alpha = 0;

if sleep > 0 image_speed = 0;
else image_speed = 1;

scrEnemyLIFcounter();

if isSelected && revealed
{
	scrEnemyPrintStats();
	global.currentSelectedDescription1 = "A Shade made";
	global.currentSelectedDescription2 = "of drarkness:";
	global.currentSelectedDescription3 = "resists attacks.";
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
				if chooseAttack = 3
				{
					chooseTarget = irandom_range(0,3);
	
					if chooseTarget = 0 && lordTop != noone
					{
						actionsRate = 2;
						lordTarget = lordTop;
						var struct = { rate : round(thisMAG/3) };
						instance_create_layer(lordTarget.x+32,lordTarget.y+32,"VFX",oVFX_EnemyWeaken,struct);
						isFighting = false;
						actions -= 2;
	
						alarm[0] = alarmCounter;
					}
					else if chooseTarget = 1 && lordRight != noone
					{
						actionsRate = 2;
						lordTarget = lordRight;
						var struct = { rate : round(thisMAG/3) };
						instance_create_layer(lordTarget.x+32,lordTarget.y+32,"VFX",oVFX_EnemyWeaken,struct);
						isFighting = false;
	
						alarm[0] = alarmCounter;
					}
					else if chooseTarget = 2 && lordDown != noone
					{
						actionsRate = 2;
						lordTarget = lordDown;
						var struct = { rate : round(thisMAG/3) };
						instance_create_layer(lordTarget.x+32,lordTarget.y+32,"VFX",oVFX_EnemyWeaken,struct);
						isFighting = false;
	
						alarm[0] = alarmCounter;
					}
					else if chooseTarget = 3 && lordLeft != noone
					{
						actionsRate = 2;
						lordTarget = lordLeft;
						var struct = { rate : round(thisMAG/3) };
						instance_create_layer(lordTarget.x+32,lordTarget.y+32,"VFX",oVFX_EnemyWeaken,struct);
						isFighting = false;
	
						alarm[0] = alarmCounter;
					}
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
			else scrEnemyMoveChoice();
		}
	}
	else
	{
		if stun stun = false;
		if sleep > 0 sleep --;
		scrEnemyForceEndTurn();
	}
}