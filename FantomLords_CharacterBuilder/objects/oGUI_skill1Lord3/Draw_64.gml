/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord3active
{
	if instance_exists(oLord3)
	{
		if oLord3.thisLord_typeAttack == "MELEE" draw_sprite(sGUI_skillAttack,1,x,y);
		else if oLord3.thisLord_typeAttack == "RANGED" draw_sprite(sGUI_skillAttack,2,x,y);
	}
}