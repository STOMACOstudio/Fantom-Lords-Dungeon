/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord1active
{
	if instance_exists(oLord1)
	{
		if (oLord1.thisLord_ascend)
		{
			draw_sprite_ext(sGUI_skillWeaponAscended,oLord1.thisLord_skillWeapon,x,y,1,1,0,thisColor,1);
		}
		else
		{
			draw_sprite_ext(sGUI_skillWeapon,oLord1.thisLord_skillWeapon,x,y,1,1,0,thisColor,1);
		}
		if thisColor = c_yellow draw_rectangle_color(x,y,x+31,y+31,c_yellow,c_yellow,c_yellow,c_yellow,true);
	}
}