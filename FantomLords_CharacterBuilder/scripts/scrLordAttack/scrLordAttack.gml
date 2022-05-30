// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrLordAttack(){

	if enemy != noone && enemy.target = true && thisLocked && thisLord_ACTpoints >= 2
	{
		if thisLord_typeAttack = "MELEE"
		{
			dmgLORD = (thisLord_ATK + irandom_range(-3,3)) - enemy.thisDEF;
			if dmgLORD <= 0 dmgLORD = 1;
			audio_play_sound(snAttack,0,false);
			instance_create_layer(enemy.x+32,enemy.y+32,"VFX",oVFX_attack);
		}
		else if thisLord_typeAttack = "RANGED"
		{
			dmgLORD = round(thisLord_ATK + irandom_range(-5,3)) - enemy.thisDEF;
			if dmgLORD <= 0 dmgLORD = 1;
			audio_play_sound(snAttack,0,false);
			instance_create_layer(enemy.x+32,enemy.y+32,"VFX",oVFX_attack);
		}
		else if thisLord_typeAttack = "MAGIC"
		{
			dmgLORD = (thisLord_MAG + irandom_range(-3,3)) - enemy.thisMAG;
			if dmgLORD <= 0 dmgLORD = 1;
			audio_play_sound(snAttackMag,0,false);
			instance_create_layer(enemy.x+32,enemy.y+32,"VFX",oVFX_attackMag);
		}
		
		if dmgLORD <= 0 dmgLORD = 1;
		global.dmgLORD = dmgLORD;
	
		instance_create_layer(enemy.x+irandom_range(8,56),enemy.y+irandom_range(8,56),"VFX",oGUI_printDMGlord);
	
		enemy.thisLIF -= dmgLORD;

		if !collision_point(enemy.x,enemy.y,oEnemy_Barrell,false,true)
		{
			if enemy.thisLIF > 0
			{
				var talk = irandom_range(1,5);

				if talk = 5
				{
					if		collision_point(x,y,oLord1,false,false) instance_create_layer(oGUI_LordFrame1.x+64,oGUI_LordFrame1.y+16,"VFX",oLord_Baloon4);
					else if collision_point(x,y,oLord2,false,false) instance_create_layer(oGUI_LordFrame2.x+64,oGUI_LordFrame2.y+16,"VFX",oLord_Baloon4);
					else if collision_point(x,y,oLord3,false,false) instance_create_layer(oGUI_LordFrame3.x+64,oGUI_LordFrame3.y+16,"VFX",oLord_Baloon4);
					else if collision_point(x,y,oLord4,false,false) instance_create_layer(oGUI_LordFrame4.x+64,oGUI_LordFrame4.y+16,"VFX",oLord_Baloon4);
				}
			}
			else
			{
				if		collision_point(x,y,oLord1,false,false) instance_create_layer(oGUI_LordFrame1.x+64,oGUI_LordFrame1.y+16,"VFX",oLord_Baloon5);
				else if collision_point(x,y,oLord2,false,false) instance_create_layer(oGUI_LordFrame2.x+64,oGUI_LordFrame2.y+16,"VFX",oLord_Baloon5);
				else if collision_point(x,y,oLord3,false,false) instance_create_layer(oGUI_LordFrame3.x+64,oGUI_LordFrame3.y+16,"VFX",oLord_Baloon5);
				else if collision_point(x,y,oLord4,false,false) instance_create_layer(oGUI_LordFrame4.x+64,oGUI_LordFrame4.y+16,"VFX",oLord_Baloon5);
			}
		}

		thisLord_ACTpoints -= 2;
		enemy.target = false;
	}
	else
	{
		if		collision_point(x,y,oLord1,false,false) instance_create_layer(oGUI_LordFrame1.x+64,oGUI_LordFrame1.y+16,"VFX",oLord_Baloon2);
		else if collision_point(x,y,oLord2,false,false) instance_create_layer(oGUI_LordFrame2.x+64,oGUI_LordFrame2.y+16,"VFX",oLord_Baloon2);
		else if collision_point(x,y,oLord3,false,false) instance_create_layer(oGUI_LordFrame3.x+64,oGUI_LordFrame3.y+16,"VFX",oLord_Baloon2);
		else if collision_point(x,y,oLord4,false,false) instance_create_layer(oGUI_LordFrame4.x+64,oGUI_LordFrame4.y+16,"VFX",oLord_Baloon2);
	}
	
}