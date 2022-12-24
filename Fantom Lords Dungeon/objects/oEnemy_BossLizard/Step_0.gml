/// @description Insert description here
// You can write your code in this editor

if (sleep > 0 || crystalized) image_speed = 0;
else image_speed = 1;

scrEnemyLIFcounter();

if isSelected && revealed
{
	scrEnemyPrintStats();
	global.currentSelectedDescription1 = "This huge";
	global.currentSelectedDescription2 = "albino bat will";
	global.currentSelectedDescription3 = "suck you dry.";
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
			var chooseAttack = irandom(3);
			
			if chooseAttack = 3 && actions >= 3
			{
				actionsRate = 3;
				chooseTarget = irandom_range(0,3);
	
				if (chooseTarget = 0 && lordTop != noone && lordTop.shadow = 0)
				{
					lordTarget = lordTop;
					dmgENEMY = (thisATK/2 + irandom_range(-3,3)) - lordTarget.thisLord_DEF;
					if dmgENEMY <= 0 dmgENEMY = 1;
					global.dmgENEMY = dmgENEMY;
					global.dmgLORD = round(dmgENEMY/2)+1;
					audio_play_sound(attackSound,0,false);
					instance_create_layer(lordTarget.x,lordTarget.y,"VFX",oVFX_BossBatSpell);
					instance_create_layer(lordTarget.x+irandom_range(8,56),lordTarget.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
					instance_create_layer(x+sprite_width/2,y+sprite_height/2,"VFX",oGUI_printHEAL);
					isFighting = false;
					lordTarget.thisLord_LIF -= dmgENEMY;
					thisLIF += round(dmgENEMY/2);
					if thisLIF > thisLIFmax thisLIF = thisLIFmax;
	
					if lordTarget.thisLord_LIF <= lordTarget.thisLord_LIFmax/2 && lordTarget.thisLord_LIF > 0
					{
						 if collision_point(lordTarget.x,lordTarget.y,oLord1,false,true) instance_create_layer(oGUI_LordFrame1.x+64,oGUI_LordFrame1.y+16,"VFX",oLord_Baloon3);
						else if collision_point(lordTarget.x,lordTarget.y,oLord2,false,true) instance_create_layer(oGUI_LordFrame2.x+64,oGUI_LordFrame2.y+16,"VFX",oLord_Baloon3);
						else if collision_point(lordTarget.x,lordTarget.y,oLord3,false,true) instance_create_layer(oGUI_LordFrame3.x+64,oGUI_LordFrame3.y+16,"VFX",oLord_Baloon3);
						else if collision_point(lordTarget.x,lordTarget.y,oLord4,false,true) instance_create_layer(oGUI_LordFrame4.x+64,oGUI_LordFrame4.y+16,"VFX",oLord_Baloon3);
					}
	
					alarm[0] = alarmCounter;
				}
				if (chooseTarget = 1 && lordRight != noone && lordRight.shadow = 0)
				{
					lordTarget = lordRight;
					dmgENEMY = (thisATK/2 + irandom_range(-3,3)) - lordTarget.thisLord_DEF;
					if dmgENEMY <= 0 dmgENEMY = 1;
					global.dmgENEMY = dmgENEMY;
					global.dmgLORD = round(dmgENEMY/2)+1;
					audio_play_sound(attackSound,0,false);
					instance_create_layer(lordTarget.x,lordTarget.y,"VFX",oVFX_BossBatSpell);
					instance_create_layer(lordTarget.x+irandom_range(8,56),lordTarget.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
					instance_create_layer(x+sprite_width/2,y+sprite_height/2,"VFX",oGUI_printHEAL);
					isFighting = false;
					lordTarget.thisLord_LIF -= dmgENEMY;
					thisLIF += round(dmgENEMY/2);
					if thisLIF > thisLIFmax thisLIF = thisLIFmax;
	
					if lordTarget.thisLord_LIF <= lordTarget.thisLord_LIFmax/2 && lordTarget.thisLord_LIF > 0
					{
						 if collision_point(lordTarget.x,lordTarget.y,oLord1,false,true) instance_create_layer(oGUI_LordFrame1.x+64,oGUI_LordFrame1.y+16,"VFX",oLord_Baloon3);
						else if collision_point(lordTarget.x,lordTarget.y,oLord2,false,true) instance_create_layer(oGUI_LordFrame2.x+64,oGUI_LordFrame2.y+16,"VFX",oLord_Baloon3);
						else if collision_point(lordTarget.x,lordTarget.y,oLord3,false,true) instance_create_layer(oGUI_LordFrame3.x+64,oGUI_LordFrame3.y+16,"VFX",oLord_Baloon3);
						else if collision_point(lordTarget.x,lordTarget.y,oLord4,false,true) instance_create_layer(oGUI_LordFrame4.x+64,oGUI_LordFrame4.y+16,"VFX",oLord_Baloon3);
					}
	
					alarm[0] = alarmCounter;
				}
				if (chooseTarget = 2 && lordDown != noone && lordDown.shadow = 0)
				{
					lordTarget = lordDown;
					dmgENEMY = (thisATK/2 + irandom_range(-3,3)) - lordTarget.thisLord_DEF;
					if dmgENEMY <= 0 dmgENEMY = 1;
					global.dmgENEMY = dmgENEMY;
					global.dmgLORD = round(dmgENEMY/2)+1;
					audio_play_sound(attackSound,0,false);
					instance_create_layer(lordTarget.x,lordTarget.y,"VFX",oVFX_BossBatSpell);
					instance_create_layer(lordTarget.x+irandom_range(8,56),lordTarget.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
					instance_create_layer(x+sprite_width/2,y+sprite_height/2,"VFX",oGUI_printHEAL);
					isFighting = false;
					lordTarget.thisLord_LIF -= dmgENEMY;
					thisLIF += round(dmgENEMY/2);
					if thisLIF > thisLIFmax thisLIF = thisLIFmax;
	
					if lordTarget.thisLord_LIF <= lordTarget.thisLord_LIFmax/2 && lordTarget.thisLord_LIF > 0
					{
						 if collision_point(lordTarget.x,lordTarget.y,oLord1,false,true) instance_create_layer(oGUI_LordFrame1.x+64,oGUI_LordFrame1.y+16,"VFX",oLord_Baloon3);
						else if collision_point(lordTarget.x,lordTarget.y,oLord2,false,true) instance_create_layer(oGUI_LordFrame2.x+64,oGUI_LordFrame2.y+16,"VFX",oLord_Baloon3);
						else if collision_point(lordTarget.x,lordTarget.y,oLord3,false,true) instance_create_layer(oGUI_LordFrame3.x+64,oGUI_LordFrame3.y+16,"VFX",oLord_Baloon3);
						else if collision_point(lordTarget.x,lordTarget.y,oLord4,false,true) instance_create_layer(oGUI_LordFrame4.x+64,oGUI_LordFrame4.y+16,"VFX",oLord_Baloon3);
					}
	
					alarm[0] = alarmCounter;
				}
				if (chooseTarget = 3 && lordLeft != noone && lordLeft.shadow = 0)
				{
					lordTarget = lordLeft;
					dmgENEMY = (thisATK/2 + irandom_range(-3,3)) - lordTarget.thisLord_DEF;
					if dmgENEMY <= 0 dmgENEMY = 1;
					global.dmgENEMY = dmgENEMY;
					global.dmgLORD = round(dmgENEMY/2)+1;
					audio_play_sound(attackSound,0,false);
					instance_create_layer(lordTarget.x,lordTarget.y,"VFX",oVFX_BossBatSpell);
					instance_create_layer(lordTarget.x+irandom_range(8,56),lordTarget.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
					instance_create_layer(x+sprite_width/2,y+sprite_height/2,"VFX",oGUI_printHEAL);
					isFighting = false;
					lordTarget.thisLord_LIF -= dmgENEMY;
					thisLIF += round(dmgENEMY/2);
					if thisLIF > thisLIFmax thisLIF = thisLIFmax;
	
					if lordTarget.thisLord_LIF <= lordTarget.thisLord_LIFmax/2 && lordTarget.thisLord_LIF > 0
					{
						 if collision_point(lordTarget.x,lordTarget.y,oLord1,false,true) instance_create_layer(oGUI_LordFrame1.x+64,oGUI_LordFrame1.y+16,"VFX",oLord_Baloon3);
						else if collision_point(lordTarget.x,lordTarget.y,oLord2,false,true) instance_create_layer(oGUI_LordFrame2.x+64,oGUI_LordFrame2.y+16,"VFX",oLord_Baloon3);
						else if collision_point(lordTarget.x,lordTarget.y,oLord3,false,true) instance_create_layer(oGUI_LordFrame3.x+64,oGUI_LordFrame3.y+16,"VFX",oLord_Baloon3);
						else if collision_point(lordTarget.x,lordTarget.y,oLord4,false,true) instance_create_layer(oGUI_LordFrame4.x+64,oGUI_LordFrame4.y+16,"VFX",oLord_Baloon3);
					}
	
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