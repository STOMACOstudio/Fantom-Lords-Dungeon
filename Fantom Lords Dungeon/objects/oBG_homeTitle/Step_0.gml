/// @description Insert description here
// You can write your code in this editor

if image_alpha < 1 image_alpha += 0.005;

if y = 80 && !instance_exists(oBG_homePage)
{
	vspeed = 0;
	instance_create_layer(640,360,"BG",oBG_homePage);
}