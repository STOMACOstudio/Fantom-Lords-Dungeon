/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord4active
{
	if instance_exists(oLord4)
	{
		draw_sprite(sGUI_skillWeapon,oLord4.thisLord_skillWeapon,x,y);
	}
}