/// @description Insert description here
// You can write your code in this editor

if global.volumeOST < 1
{
	global.volumeOST += 0.1;
	image_blend = c_yellow;
	scrVolumeOST();
	alarm[0] = 10;
}