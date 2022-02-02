/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord1active
{
	if instance_exists(oLord1)
	{
		if oLord1.thisLord_typeAttack == "MELEE" draw_sprite(sGUI_skillAttack,1,x,y);
		else if oLord1.thisLord_typeAttack == "RANGED" draw_sprite(sGUI_skillAttack,2,x,y);
	}
}