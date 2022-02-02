/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord2active
{
	if instance_exists(oLord2)
	{
		draw_sprite(sGUI_skillClassArmor,oLord2.thisLord_skillClassArmor,x,y);
	}
}