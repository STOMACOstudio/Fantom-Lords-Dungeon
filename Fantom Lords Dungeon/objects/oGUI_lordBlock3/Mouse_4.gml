/// @description Insert description here
// You can write your code in this editor

if empty && !oGUI_lordBlock1.empty && !oGUI_lordBlock2.empty
{
	if oUI_ChoiceFantom.active
	{
		image_blend = c_yellow;
		audio_play_sound(snAddLord,0,false);
	
		oLordStats.lord3active = true;
		var surf = surface_create(320,320);
		surface_set_target(surf);
		draw_clear_alpha(0, 0);
		draw_sprite(sLordTrait_Background, global.background, 0, 0);
		draw_sprite(sLordTrait_Ancestry, global.ancestry, 0, 0);
		draw_sprite(sLordTrait_ArmorClass, global.classArmor, 0, 0);
		draw_sprite(sLordTrait_Headgear, global.headgear, 0, 0);
		draw_sprite(sLordTrait_Weapon, global.weapon, 0, 0);
		draw_sprite(sLordTrait_Relic, global.relic, 0, 0);
		sLord3 = sprite_create_from_surface(surf, 0, 0, 320, 320, false, false, 0, 0);
		surface_reset_target();
		surface_free(surf);
		sprite_index = sLord3;
		image_xscale /= 5;
		image_yscale /= 5;
	
		oLordStats.lord3name = global.lordName;
		oLordStats.lord3sprite = sLord3;
		oLordStats.lord3LIF = global.LIF;
		oLordStats.lord3LIFmax = global.LIF;
		oLordStats.lord3ATK = global.ATK;
		oLordStats.lord3ATKmax = global.ATK;
		oLordStats.lord3DEF = global.DEF;
		oLordStats.lord3DEFmax = global.DEF;
		oLordStats.lord3MAG = global.MAG;
		oLordStats.lord3MAGmax = global.MAG;
		oLordStats.lord3ACT = global.ACT;
		oLordStats.lord3ACTmax = global.ACT;
		oLordStats.lord3typeAttack = global.weaponAttack;
		oLordStats.lord3skillClassArmor = global.classArmor;
		oLordStats.lord3skillWeapon = global.weapon;
	}
	else if oUI_ChoiceAscended.active
	{
		image_blend = c_yellow;
		audio_play_sound(snAddLord,0,false);
	
		oLordStats.lord3active = true;
		oLordStats.lord3ascend = true;
		var surf = surface_create(320,320);
		surface_set_target(surf);
		draw_clear_alpha(0, 0);
		//draw_sprite(sAscendTrait_Background, global.background, 0, 0);
		draw_sprite(sAscendTrait_Ancestry, global.ancestry, 0, 0);
		draw_sprite(sAscendTrait_ArmorClass, global.classArmor, 0, 0);
		draw_sprite(sAscendTrait_Headgear, global.headgear, 0, 0);
		draw_sprite(sAscendTrait_Weapon, global.weapon, 0, 0);
		draw_sprite(sAscendTrait_Relic, global.relic, 0, 0);
		sLord3 = sprite_create_from_surface(surf, 0, 0, 320, 320, false, false, 0, 0);
		surface_reset_target();
		surface_free(surf);
		sprite_index = sLord3;
		image_xscale /= 5;
		image_yscale /= 5;
	
		oLordStats.lord3name = global.lordName;
		oLordStats.lord3sprite = sLord3;
		oLordStats.lord3LIF = global.LIF;
		oLordStats.lord3LIFmax = global.LIF;
		oLordStats.lord3ATK = global.ATK;
		oLordStats.lord3ATKmax = global.ATK;
		oLordStats.lord3DEF = global.DEF;
		oLordStats.lord3DEFmax = global.DEF;
		oLordStats.lord3MAG = global.MAG;
		oLordStats.lord3MAGmax = global.MAG;
		oLordStats.lord3ACT = global.ACT;
		oLordStats.lord3ACTmax = global.ACT;
		oLordStats.lord3typeAttack = global.weaponAttack;
		oLordStats.lord3skillClassArmor = global.classArmor;
		oLordStats.lord3skillWeapon = global.weapon;
	}
	
	empty = false;
}