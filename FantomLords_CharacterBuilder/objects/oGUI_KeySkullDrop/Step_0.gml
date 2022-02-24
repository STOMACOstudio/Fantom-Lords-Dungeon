/// @description Insert description here
// You can write your code in this editor

var treasure = collision_rectangle(mouse_x-16,mouse_y-16,mouse_x+16,mouse_y+16,oTreasureChest_Skull,false,false);

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

if global.roomCondition = "FIND THE KEY"
{
	var door = collision_rectangle(mouse_x-16,mouse_y-16,mouse_x+16,mouse_y+16,oDoor,false,false);

	if mouse_check_button_released(mb_left)
	{
		if door != noone
		{
			door.open = true;
			audio_play_sound(snOpenChest,0,false);
			used = true;
		}

		instance_destroy();
	}
}