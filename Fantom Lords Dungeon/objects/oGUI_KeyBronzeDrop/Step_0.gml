/// @description Insert description here
// You can write your code in this editor

x = mouse_x-32;
y = mouse_y-32;

var treasure = collision_rectangle(mouse_x-16,mouse_y-16,mouse_x+16,mouse_y+16,oTreasureChest_Bronze,false,false);

if mouse_check_button_released(mb_left)
{
	if treasure != noone && collision_point(x,y,oEnemy0_Father,false,true) = noone
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