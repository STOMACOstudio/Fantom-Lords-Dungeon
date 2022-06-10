/// @description Insert description here
// You can write your code in this editor

if isSelected && revealed
{
	scrEnemyPrintStats();
	global.currentSelectedDescription1 = "Green and big,";
	global.currentSelectedDescription2 = "comes with a";
	global.currentSelectedDescription3 = "surprise.";
}

if isFighting && !turnComplete && actions > 0
{
	scrEnemyCheckForTiles(); //check all close lords and tiles
	canMove = false;
	
	if actions >= 2
	{
		if lordTop != noone || lordTopRight != noone || lordRightRight != noone || lordRightRightDown != noone || lordDownDownRight != noone || lordDownDown != noone || lordLeft != noone || lordDownLeft != noone
		{
			var chooseAttack = irandom_range(0,3);
			if chooseAttack = 3 && actions >=3
			{
				actionsRate = 3;
				var struct = {dmg : thisMAG/2};
				
				if collision_point(x-64,y-64,oLord0Parent,false,true) instance_create_layer(x-64,y-64,"VFX",oVFX_BossFlanSpell,struct);
				if collision_point(x,y-64,oLord0Parent,false,true) instance_create_layer(x,y-64,"VFX",oVFX_BossFlanSpell,struct);
				if collision_point(x+64,y-64,oLord0Parent,false,true) instance_create_layer(x+64,y-64,"VFX",oVFX_BossFlanSpell,struct);
				if collision_point(x+128,y-64,oLord0Parent,false,true) instance_create_layer(x+128,y-64,"VFX",oVFX_BossFlanSpell,struct);
				if collision_point(x+128,y,oLord0Parent,false,true) instance_create_layer(x+128,y,"VFX",oVFX_BossFlanSpell,struct);
				if collision_point(x+128,y+64,oLord0Parent,false,true) instance_create_layer(x+128,y+64,"VFX",oVFX_BossFlanSpell,struct);
				if collision_point(x+128,y+128,oLord0Parent,false,true) instance_create_layer(x+128,y+128,"VFX",oVFX_BossFlanSpell,struct);
				if collision_point(x+64,y+128,oLord0Parent,false,true) instance_create_layer(x+64,y+128,"VFX",oVFX_BossFlanSpell,struct);
				if collision_point(x,y+128,oLord0Parent,false,true) instance_create_layer(x,y+128,"VFX",oVFX_BossFlanSpell,struct);
				if collision_point(x-64,y+128,oLord0Parent,false,true) instance_create_layer(x-64,y+128,"VFX",oVFX_BossFlanSpell,struct);
				if collision_point(x-64,y+64,oLord0Parent,false,true) instance_create_layer(x-64,y+64,"VFX",oVFX_BossFlanSpell,struct);
				if collision_point(x-64,y,oLord0Parent,false,true) instance_create_layer(x-64,y,"VFX",oVFX_BossFlanSpell,struct);
				
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
		else scrBossMoveChoice();
	}
}
