/// @description Insert description here
// You can write your code in this editor

//instance_destroy();
if makeImpact
{
	makeImpact = false;
	alarm[0] = 15;
	instance_create_layer(other.x+other.sprite_width/2,other.y+other.sprite_height/2,"VFX",oSKILL_WEAPON_Missile_impact);
}