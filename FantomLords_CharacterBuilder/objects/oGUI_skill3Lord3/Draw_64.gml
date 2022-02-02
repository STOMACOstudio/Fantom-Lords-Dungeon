/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord3active
{
	if instance_exists(oLord3)
	{
		draw_sprite(sGUI_skillWeapon,oLord3.thisLord_skillWeapon,x,y);
	}
}