/// @description Insert description here
// You can write your code in this editor

if hspeed > 0 image_xscale = -1;

if point_distance(x,xDir,y,yDir) <= 20 speed = 0;

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

scrLordMovement();