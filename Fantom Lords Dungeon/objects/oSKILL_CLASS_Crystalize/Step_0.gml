/// @description Insert description here
// You can write your code in this editor

if done = true
{
	image_alpha = 0;
	target0enemy.crystalized = true;
	target0enemy.thisDEF += 100;
	global.hasControl = true;
	instance_create_layer(x,y,"VFX",oSKILL_CLASS_CrystalizeEnd);
	instance_destroy();
}