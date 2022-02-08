/// @description Insert description here
// You can write your code in this editor

var treasure = collision_rectangle(mouse_x+16,mouse_y+16,mouse_x-32,mouse_y-32,oTreasureChest_Bronze,false,false);

if mouse_check_button_released(mb_left)
{
	if treasure != noone
	{
		instance_destroy(treasure);
		audio_play_sound(snOpenChest,0,false);
		used = true;
	}

	instance_destroy();
}