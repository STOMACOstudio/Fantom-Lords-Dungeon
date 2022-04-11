/// @description Insert description here
// You can write your code in this editor

if global.BRONZEkey > 0 && collision_point(x,y,oLord0Parent,false,true) = noone && collision_point(x,y,oEnemy0_Father,true,false) = noone
{
	if !oLord0Parent.thisLocked
	{
		global.BRONZEkey -= 1;
		audio_play_sound(snOpenChest,0,false);
		instance_destroy();
	}
}
