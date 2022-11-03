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
	global.currentSelectedDescription1 = "Blood Bats";
	global.currentSelectedDescription2 = "can suck you";
	global.currentSelectedDescription3 = "dry.";
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
				actionsRate = 2;
				dmgTYPE = thisATK;
				chooseTarget = irandom_range(0,3);
	
		if chooseTarget = 0 && lordTop != noone
		{
			lordTarget = lordTop;
			dmgENEMY = (dmgTYPE + irandom_range(-3,3)) - lordTarget.thisLord_DEF;
			if dmgENEMY <= 0 dmgENEMY = 1;
			global.dmgENEMY = dmgENEMY;
			global.dmgLORD = round(dmgENEMY/2)+1;
			audio_play_sound(attackSound,0,false);
			instance_create_layer(lordTarget.x,lordTarget.y,"VFX",attackSprite);
			instance_create_layer(lordTarget.x+irandom_range(8,56),lordTarget.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
			instance_create_layer(x+sprite_width/2,y+sprite_height/2,"VFX",oGUI_printHEAL);
			thisLIF += round(dmgENEMY/2);
			if thisLIF > thisLIFmax thisLIF = thisLIFmax;
			lordTarget.thisLord_LIF -= dmgENEMY;
			isFighting = false;
	
			if lordTarget.thisLord_LIF <= lordTarget.thisLord_LIFmax/2 && lordTarget.thisLord_LIF > 0
			{
					 if collision_point(lordTarget.x,lordTarget.y,oLord1,false,true) instance_create_layer(oGUI_LordFrame1.x+64,oGUI_LordFrame1.y+16,"VFX",oLord_Baloon3);
				else if collision_point(lordTarget.x,lordTarget.y,oLord2,false,true) instance_create_layer(oGUI_LordFrame2.x+64,oGUI_LordFrame2.y+16,"VFX",oLord_Baloon3);
				else if collision_point(lordTarget.x,lordTarget.y,oLord3,false,true) instance_create_layer(oGUI_LordFrame3.x+64,oGUI_LordFrame3.y+16,"VFX",oLord_Baloon3);
				else if collision_point(lordTarget.x,lordTarget.y,oLord4,false,true) instance_create_layer(oGUI_LordFrame4.x+64,oGUI_LordFrame4.y+16,"VFX",oLord_Baloon3);
			}
	
			alarm[0] = alarmCounter;
		}
		else if chooseTarget = 1 && lordRight != noone
		{
			lordTarget = lordRight;
			dmgENEMY = (dmgTYPE + irandom_range(-3,3)) - lordTarget.thisLord_DEF;
			if dmgENEMY <= 0 dmgENEMY = 1;
			global.dmgENEMY = dmgENEMY;
			global.dmgLORD = round(dmgENEMY/2)+1;
			audio_play_sound(attackSound,0,false);
			instance_create_layer(lordTarget.x,lordTarget.y,"VFX",attackSprite);
			instance_create_layer(lordTarget.x+irandom_range(8,56),lordTarget.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
			instance_create_layer(x+sprite_width/2,y+sprite_height/2,"VFX",oGUI_printHEAL);
			thisLIF += round(dmgENEMY/2);
			if thisLIF > thisLIFmax thisLIF = thisLIFmax;
			lordTarget.thisLord_LIF -= dmgENEMY;
			isFighting = false;
	
			if lordTarget.thisLord_LIF <= lordTarget.thisLord_LIFmax/2 && lordTarget.thisLord_LIF > 0
			{
					 if collision_point(lordTarget.x,lordTarget.y,oLord1,false,true) instance_create_layer(oGUI_LordFrame1.x+64,oGUI_LordFrame1.y+16,"VFX",oLord_Baloon3);
				else if collision_point(lordTarget.x,lordTarget.y,oLord2,false,true) instance_create_layer(oGUI_LordFrame2.x+64,oGUI_LordFrame2.y+16,"VFX",oLord_Baloon3);
				else if collision_point(lordTarget.x,lordTarget.y,oLord3,false,true) instance_create_layer(oGUI_LordFrame3.x+64,oGUI_LordFrame3.y+16,"VFX",oLord_Baloon3);
				else if collision_point(lordTarget.x,lordTarget.y,oLord4,false,true) instance_create_layer(oGUI_LordFrame4.x+64,oGUI_LordFrame4.y+16,"VFX",oLord_Baloon3);
			}
	
			alarm[0] = alarmCounter;
		}
		else if chooseTarget = 2 && lordDown != noone
		{
			lordTarget = lordDown;
			dmgENEMY = (dmgTYPE + irandom_range(-3,3)) - lordTarget.thisLord_DEF;
			if dmgENEMY <= 0 dmgENEMY = 1;
			global.dmgENEMY = dmgENEMY;
			global.dmgLORD = round(dmgENEMY/2)+1;
			audio_play_sound(attackSound,0,false);
			instance_create_layer(lordTarget.x,lordTarget.y,"VFX",attackSprite);
			instance_create_layer(lordTarget.x+irandom_range(8,56),lordTarget.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
			instance_create_layer(x+sprite_width/2,y+sprite_height/2,"VFX",oGUI_printHEAL);
			thisLIF += round(dmgENEMY/2);
			if thisLIF > thisLIFmax thisLIF = thisLIFmax;
			lordTarget.thisLord_LIF -= dmgENEMY;
			isFighting = false;
	
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
			dmgENEMY = (dmgTYPE + irandom_range(-3,3)) - lordTarget.thisLord_DEF;
			if dmgENEMY <= 0 dmgENEMY = 1;
			global.dmgENEMY = dmgENEMY;
			global.dmgLORD = round(dmgENEMY/2)+1;
			audio_play_sound(attackSound,0,false);
			instance_create_layer(lordTarget.x,lordTarget.y,"VFX",attackSprite);
			instance_create_layer(lordTarget.x+irandom_range(8,56),lordTarget.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
			instance_create_layer(x+sprite_width/2,y+sprite_height/2,"VFX",oGUI_printHEAL);
			thisLIF += round(dmgENEMY/2);
			if thisLIF > thisLIFmax thisLIF = thisLIFmax;
			lordTarget.thisLord_LIF -= dmgENEMY;
			isFighting = false;
	
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
		if stun stun = false
		if sleep > 0 sleep --;
		scrEnemyForceEndTurn();
	}
}