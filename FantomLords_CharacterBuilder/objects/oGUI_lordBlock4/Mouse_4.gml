/// @description Insert description here
// You can write your code in this editor

if empty && !oGUI_lordBlock1.empty && !oGUI_lordBlock2.empty && !oGUI_lordBlock3.empty
{
	image_blend = c_yellow;
	audio_play_sound(snAddLord,0,false);
	
	oLordStats.lord4active = true;
	
	var surf = surface_create(320,320);
	surface_set_target(surf);
	draw_clear_alpha(0, 0);
	draw_sprite(sLordTrait_Background, global.background, 0, 0);
	draw_sprite(sLordTrait_Ancestry, global.ancestry, 0, 0);
	draw_sprite(sLordTrait_ArmorClass, global.classArmor, 0, 0);
	draw_sprite(sLordTrait_Headgear, global.headgear, 0, 0);
	draw_sprite(sLordTrait_Weapon, global.weapon, 0, 0);
	draw_sprite(sLordTrait_Relic, global.relic, 0, 0);
	sLord4 = sprite_create_from_surface(surf, 0, 0, 320, 320, false, false, 0, 0);
	surface_reset_target();
	surface_free(surf);
	sprite_index = sLord4;
	image_xscale /= 5;
	image_yscale /= 5;
	
	oLordStats.lord4name = global.lordNumber;
	oLordStats.lord4sprite = sLord4;
	oLordStats.lord4LIF = global.LIF;
	oLordStats.lord4LIFmax = global.LIF;
	oLordStats.lord4ATK = global.ATK;
	oLordStats.lord4ATKmax = global.ATK;
	oLordStats.lord4DEF = global.DEF;
	oLordStats.lord4DEFmax = global.DEF;
	oLordStats.lord4MAG = global.MAG;
	oLordStats.lord4MAGmax = global.MAG;
	oLordStats.lord4ACT = global.ACT;
	oLordStats.lord4ACTmax = global.ACT;
	oLordStats.lord4typeAttack = global.weaponAttack;
	oLordStats.lord4skillClassArmor = global.classArmor;
	oLordStats.lord4skillWeapon = global.weapon;
	
	empty = false;
}