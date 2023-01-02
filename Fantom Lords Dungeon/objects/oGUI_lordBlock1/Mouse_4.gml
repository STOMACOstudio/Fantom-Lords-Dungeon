/// @description Insert description here
// You can write your code in this editor

if empty 
{
	if oUI_ChoiceFantom.active
	{
		image_blend = c_yellow;
		audio_play_sound(snAddLord,0,false);
	
		oLordStats.lord1active = true;
	
		var surf = surface_create(320,320);
		surface_set_target(surf);
		draw_clear_alpha(0, 0);
		draw_sprite(sLordTrait_Background, global.background, 0, 0);
		draw_sprite(sLordTrait_Ancestry, global.ancestry, 0, 0);
		draw_sprite(sLordTrait_ArmorClass, global.classArmor, 0, 0);
		draw_sprite(sLordTrait_Headgear, global.headgear, 0, 0);
		draw_sprite(sLordTrait_Weapon, global.weapon, 0, 0);
		draw_sprite(sLordTrait_Relic, global.relic, 0, 0);
		sLord1 = sprite_create_from_surface(surf, 0, 0, 320, 320, false, false, 0, 0);
		surface_reset_target();
		surface_free(surf);
		sprite_index = sLord1;
		image_xscale /= 5;
		image_yscale /= 5;
	
		oLordStats.lord1name = global.lordName;
		oLordStats.lord1sprite = sLord1;
		oLordStats.lord1LIF = global.LIF;
		oLordStats.lord1LIFmax = global.LIF;
		oLordStats.lord1ATK = global.ATK;
		oLordStats.lord1ATKmax = global.ATK;
		oLordStats.lord1DEF = global.DEF;
		oLordStats.lord1DEFmax = global.DEF;
		oLordStats.lord1MAG = global.MAG;
		oLordStats.lord1MAGmax = global.MAG;
		oLordStats.lord1ACT = global.ACT;
		oLordStats.lord1ACTmax = global.ACT;
		oLordStats.lord1typeAttack = global.weaponAttack;
		oLordStats.lord1skillClassArmor = global.classArmor;
		oLordStats.lord1skillWeapon = global.weapon;
	}
	else if oUI_ChoiceAscended.active
	{
		image_blend = c_yellow;
		audio_play_sound(snAddLord,0,false);
	
		oLordStats.lord1active = true;
		oLordStats.lord1ascend = true;
	
		var surf = surface_create(320,320);
		surface_set_target(surf);
		draw_clear_alpha(0, 0);
		//draw_sprite(sAscendTrait_Background, global.background, 0, 0);
		draw_sprite(sAscendTrait_Ancestry, global.ancestry, 0, 0);
		draw_sprite(sAscendTrait_ArmorClass, global.classArmor, 0, 0);
		draw_sprite(sAscendTrait_Headgear, global.headgear, 0, 0);
		draw_sprite(sAscendTrait_Weapon, global.weapon, 0, 0);
		draw_sprite(sAscendTrait_Relic, global.relic, 0, 0);
		sLord1 = sprite_create_from_surface(surf, 0, 0, 320, 320, false, false, 0, 0);
		surface_reset_target();
		surface_free(surf);
		sprite_index = sLord1;
		image_xscale /= 5;
		image_yscale /= 5;
	
		oLordStats.lord1name = global.lordName;
		oLordStats.lord1sprite = sLord1;
		oLordStats.lord1LIF = global.LIF;
		oLordStats.lord1LIFmax = global.LIF;
		oLordStats.lord1ATK = global.ATK;
		oLordStats.lord1ATKmax = global.ATK;
		oLordStats.lord1DEF = global.DEF;
		oLordStats.lord1DEFmax = global.DEF;
		oLordStats.lord1MAG = global.MAG;
		oLordStats.lord1MAGmax = global.MAG;
		oLordStats.lord1ACT = global.ACT;
		oLordStats.lord1ACTmax = global.ACT;
		oLordStats.lord1typeAttack = global.weaponAttack;
		oLordStats.lord1skillClassArmor = global.classArmor;
		oLordStats.lord1skillWeapon = global.weapon;
	}
	
	empty = false;
}