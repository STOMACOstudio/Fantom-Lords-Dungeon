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
			dmgLORD = round(thisLord_ATK + irandom_range(-3,3)) - enemy.thisDEF;
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
		global.dmgLORD = string(dmgLORD);
	
		instance_create_layer(enemy.x+irandom_range(8,56),enemy.y+irandom_range(8,56),"VFX",oGUI_printDMGlord);
	
		enemy.thisLIF -= dmgLORD;
		thisLord_ACTpoints -= 2;
		enemy.target = false;
	}
	
}