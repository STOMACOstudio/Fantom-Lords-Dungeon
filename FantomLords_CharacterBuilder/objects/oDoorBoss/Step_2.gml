/// @description Insert description here
// You can write your code in this editor

if nextRoom <= 0 && !global.gameOver
{
	if !instance_exists(oVFX_SolidBlackFadein) instance_create_layer(0,0,"VFX",oVFX_SolidBlackFadein);
}

if open image_index = 1;
else image_index = 0;