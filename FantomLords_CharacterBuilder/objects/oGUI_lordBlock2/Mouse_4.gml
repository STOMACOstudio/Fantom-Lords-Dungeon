/// @description Insert description here
// You can write your code in this editor

if empty && !oGUI_lordBlock1.empty
{
	image_blend = c_yellow;
	audio_play_sound(snAddLord,0,false);
	
	oLordStats.lord2active = true;
	
	var surf = surface_create(320,320);
	surface_set_target(surf);
	draw_clear_alpha(0, 0);
	draw_sprite(sLordTrait_Background, global.background, 0, 0);
	draw_sprite(sLordTrait_Ancestry, global.ancestry, 0, 0);
	draw_sprite(sLordTrait_ArmorClass, global.classArmor, 0, 0);
	draw_sprite(sLordTrait_Headgear, global.headgear, 0, 0);
	draw_sprite(sLordTrait_Weapon, global.weapon, 0, 0);
	draw_sprite(sLordTrait_Relic, global.relic, 0, 0);
	sLord2 = sprite_create_from_surface(surf, 0, 0, 320, 320, false, false, 0, 0);
	surface_reset_target();
	surface_free(surf);
	sprite_index = sLord2;
	image_xscale /= 5;
	image_yscale /= 5;
	
	oLordStats.lord2name = global.lordNumber;
	oLordStats.lord2sprite = sLord2;
	oLordStats.lord2LIF = global.LIF;
	oLordStats.lord2LIFmax = global.LIF;
	oLordStats.lord2ATK = global.ATK;
	oLordStats.lord2ATKmax = global.ATK;
	oLordStats.lord2DEF = global.DEF;
	oLordStats.lord2DEFmax = global.DEF;
	oLordStats.lord2MAG = global.MAG;
	oLordStats.lord2MAGmax = global.MAG;
	oLordStats.lord2ACT = global.ACT;
	oLordStats.lord2ACTmax = global.ACT;
	oLordStats.lord2typeAttack = global.weaponAttack;
	oLordStats.lord2skillClassArmor = global.classArmor;
	oLordStats.lord2skillWeapon = global.weapon;
	
	empty = false;
}