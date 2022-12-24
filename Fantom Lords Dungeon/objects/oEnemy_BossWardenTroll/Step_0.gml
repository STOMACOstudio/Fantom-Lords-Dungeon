/// @description Insert description here
// You can write your code in this editor

if (sleep > 0 || crystalized) image_speed = 0;
else image_speed = 1;

scrEnemyLIFcounter();

if isSelected && revealed
{
	scrEnemyPrintStats();
	global.currentSelectedDescription1 = "This shit";
	global.currentSelectedDescription2 = "is slow but";
	global.currentSelectedDescription3 = "hits hard af.";
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
			var chooseAttack = irandom(2);
			
			if chooseAttack != 2 && actions >= 2
			{
				actionsRate = 2;
				chooseTarget = irandom_range(0,3);
	
				if (chooseTarget = 0 && lordTop != noone && lordTop.shadow = 0)
				{
					isFighting = false;
					var struct =
					{
						dmgENEMY : round(thisATK/2 + irandom_range(-3,3)),
						image_angle : 180
					}
					audio_play_sound(snBossTrollSwing,0,false);
					instance_create_layer(x+32,y,"VFX",oVFX_EnemySwing,struct);
					alarm[0] = alarmCounter;
				}
				if (chooseTarget = 1 && lordRight != noone && lordRight.shadow = 0)
				{
					isFighting = false;
					var struct =
					{
						dmgENEMY : round(thisATK/2 + irandom_range(-3,3)),
						image_angle : 90
					}
					audio_play_sound(snBossTrollSwing,0,false);
					instance_create_layer(x+64,y+32,"VFX",oVFX_EnemySwing,struct);
					alarm[0] = alarmCounter;
				}
				if (chooseTarget = 2 && lordDown != noone && lordDown.shadow = 0)
				{
					isFighting = false;
					var struct =
					{
						dmgENEMY : round(thisATK/2 + irandom_range(-3,3)),
						image_angle : 0
					}
					audio_play_sound(snBossTrollSwing,0,false);
					instance_create_layer(x+32,y+64,"VFX",oVFX_EnemySwing,struct);
					alarm[0] = alarmCounter;
				}
				if (chooseTarget = 3 && lordLeft != noone && lordLeft.shadow = 0)
				{
					isFighting = false;
					var struct =
					{
						dmgENEMY : round(thisATK/2 + irandom_range(-3,3)),
						image_angle : -90
					}
					audio_play_sound(snBossTrollSwing,0,false);
					instance_create_layer(x,y+32,"VFX",oVFX_EnemySwing,struct);
					alarm[0] = alarmCounter;
				}
			}
			else
			{
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