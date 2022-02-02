/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord2active
{
	if instance_exists(oLord2)
	{
		if oLord2.thisLord_typeAttack == "MELEE" draw_sprite(sGUI_skillAttack,1,x,y);
		else if oLord2.thisLord_typeAttack == "RANGED" draw_sprite(sGUI_skillAttack,2,x,y);
	}
}