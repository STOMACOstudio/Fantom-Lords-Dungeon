/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord4active
{
	if instance_exists(oLord4)
	{
		if (oLord4.thisLord_ascend)
		{
			draw_sprite_ext(sGUI_skillClassArmorAscended,oLord4.thisLord_skillClassArmor,x,y,1,1,0,thisColor,1);
		}
		else
		{
			draw_sprite_ext(sGUI_skillClassArmor,oLord4.thisLord_skillClassArmor,x,y,1,1,0,thisColor,1);
		}
		if thisColor = c_yellow draw_rectangle_color(x,y,x+31,y+31,c_yellow,c_yellow,c_yellow,c_yellow,true);
	}
}