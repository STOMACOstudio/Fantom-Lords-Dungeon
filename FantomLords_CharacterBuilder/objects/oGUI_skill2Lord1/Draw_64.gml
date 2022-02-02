/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord1active
{
	if instance_exists(oLord1)
	{
		draw_sprite(sGUI_skillClassArmor,oLord1.thisLord_skillClassArmor,x,y);
	}
}