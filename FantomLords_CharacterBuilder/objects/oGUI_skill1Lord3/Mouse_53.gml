/// @description Insert description here
// You can write your code in this editor

if mouse_x > x && mouse_x < x+32 && mouse_y > y && mouse_y < y+32 && !instance_exists(oVFX_spellCast0father) && instance_exists(oLord3) && oLord3.thisLord_ACTpoints > 0 && oLord3.thisLocked
{
	instance_create_layer(mouse_x,mouse_y,"VFX",oVFX_spellCast3);
	
	if oLord3.thisLord_typeAttack = "MAGIC" global.dmgLORD = oLord3.thisLord_MAG;
	else global.dmgLORD = oLord3.thisLord_ATK;
	
	casting = true;
}