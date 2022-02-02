/// @description Insert description here
// You can write your code in this editor

if mouse_x > x && mouse_x < x+32 && mouse_y > y && mouse_y < y+32 && !instance_exists(oVFX_spellCast) && instance_exists(oLord1)
{
	instance_create_layer(mouse_x,mouse_y,"VFX",oVFX_spellCast);
	casting = true;
}