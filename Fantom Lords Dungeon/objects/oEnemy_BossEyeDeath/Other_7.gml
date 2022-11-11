/// @description Insert description here
// You can write your code in this editor

if (phase = 1)
{
	image_index = 9;
	image_speed = -1;
	image_blend = colorEnd;
	phase = 2;
}
else
{
	image_alpha = 0;
	instance_create_layer(x,y,"Instances",flanMaking);
	global.hasControl = true;
	instance_destroy();
}