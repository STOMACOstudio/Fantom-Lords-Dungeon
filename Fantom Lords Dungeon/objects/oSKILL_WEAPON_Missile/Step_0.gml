/// @description Insert description here
// You can write your code in this editor

if x > 1400 || x < -100
{
	global.hasControl = true;
	instance_destroy();
}
if y > 800 || y < -100
{
	global.hasControl = true;
	instance_destroy();
}

//instance_create_depth(x+irandom_range(-4,4),y+irandom_range(-4,4),depth,oSKILL_WEAPON_Hydrobolt_bubbe);