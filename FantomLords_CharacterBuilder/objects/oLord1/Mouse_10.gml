/// @description Insert description here
// You can write your code in this editor

if !global.isLocked
{
	image_blend = c_yellow;
}

if !instance_exists(oGUI_LordStatsOverlay1)
{
	instance_create_layer(mouse_x,mouse_y,"Instances",oGUI_LordStatsOverlay1);
}