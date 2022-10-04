/// @description Insert description here
// You can write your code in this editor

if sleep > 0 image_speed = 0;
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
	if !stun && sleep = 0
	{
	scrEnemyCheckForTiles(); //check all close lords and tiles
	canMove = false;
	
	if actions >= 2
	{
		if (lordRightRightDownDown != noone && lordRightRightDownDown.shadow = 0) || (lordRightRightRightDown != noone && lordRightRightRightDown.shadow = 0) || (lordDownDownDownRight != noone && lordDownDownDownRight.shadow = 0) || (lordTopTopRightRight != noone && lordTopTopRightRight.shadow = 0) || (lordRightRightRightTop != noone && lordRightRightRightTop.shadow = 0) || (lordRightRightRightDownDown != noone && lordRightRightRightDownDown.shadow = 0) || (lordDownDownDownRightRight != noone && lordDownDownDownRightRight.shadow = 0) || (lordDownDownDownLeft != noone && lordDownDownDownLeft.shadow = 0) || (lordLeftLeftDownDown != noone && lordLeftLeftDownDown.shadow = 0) || (lordTopTopTopRight != noone && lordTopTopTopRight.shadow = 0) || (lordRightRightRightRight != noone && lordRightRightRightRight.shadow = 0) || (lordRightRightRightRightDown != noone && lordRightRightRightRightDown.shadow = 0) || (lordDownDownDownDown != noone && lordDownDownDownDown.shadow = 0) || (lordDownDownDownDownRight != noone && lordDownDownDownDownRight.shadow = 0) || (lordRight != noone && lordLeftLeftLeftDown.shadow = 0)
		{
			var chooseAttack = irandom(3);
			
			if chooseAttack = 3 && actions >= 3
			{
				chooseTarget = irandom_range(0,7);
				
				actionsRate = 3;
	
				if chooseTarget = 0 && lordTop != noone
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
				else if chooseTarget = 1 && lordRightRight != noone
				{
					lordTarget = lordRightRight;
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
				else if chooseTarget = 2 && lordDownDown != noone
				{
					lordTarget = lordDownDown;
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
				else if chooseTarget = 3 && lordLeft != noone
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
				else if chooseTarget = 4 && lordTopRight != noone
				{
					lordTarget = lordTopRight;
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
				else if chooseTarget = 5 && lordDownLeft != noone
				{
					lordTarget = lordDownLeft;
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
				else if chooseTarget = 6 && lordRightRightDown != noone
				{
					lordTarget = lordRightRightDown;
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
				else if chooseTarget = 7 && lordDownDownRight != noone
				{
					lordTarget = lordDownDownRight;
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
	else
	{
		if stun stun = false
		if sleep > 0 sleep --;
		scrEnemyForceEndTurn();
	}
}