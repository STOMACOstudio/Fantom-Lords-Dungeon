/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord4active
{
	if instance_exists(oLord4)
	{
		if oLord4.thisLord_typeAttack == "MELEE" draw_sprite(sGUI_skillAttack,1,x,y);
		else if oLord4.thisLord_typeAttack == "RANGED" draw_sprite(sGUI_skillAttack,2,x,y);
	}
}