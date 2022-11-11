/// @description Insert description here
// You can write your code in this editor

//if image_alpha < 1 image_alpha += 0.0032;

if image_alpha < 1 image_alpha += 0.05;

if image_alpha >= 1 && !instance_exists(oBG_homeTitle) instance_create_layer(x,y-128,"BG",oBG_homeTitle);