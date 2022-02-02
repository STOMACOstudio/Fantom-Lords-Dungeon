/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord3active
{
	if instance_exists(oLord3)
	{
		if mouse_x > x && mouse_x < x+32 && mouse_y > y && mouse_y < y+32 draw_sprite_ext(sGUI_skillWeapon,oLord3.thisLord_skillWeapon,x,y,1,1,0,c_yellow,1)
		else draw_sprite(sGUI_skillWeapon,oLord3.thisLord_skillWeapon,x,y);
	}
}