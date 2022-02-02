/// @description Insert description here
// You can write your code in this editor

if !instance_exists(oVFX_spellCast) && instance_exists(oLord1)
{
	instance_create_layer(mouse_x,mouse_y,"VFX",oVFX_spellCast);
	casting = true;
}