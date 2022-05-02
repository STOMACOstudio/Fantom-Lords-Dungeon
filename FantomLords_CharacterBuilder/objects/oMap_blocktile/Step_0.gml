/// @description Insert description here
// You can write your code in this editor

image_blend = global.roomColor;

if revealed
{
	if collision_rectangle(x-96,y-96,x+160,y+160,oLord0Parent,false,true) != noone
	{
		image_index = 1;
		stepped = true;
	}
	else
	{
		image_index = 0;
		stepped = false;
	}
}
