/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord4active
{
	if instance_exists(oLord4)
	{
		draw_sprite(sGUI_skillClassArmor,oLord4.thisLord_skillClassArmor,x,y);
	}
}