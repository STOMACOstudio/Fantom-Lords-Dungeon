/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord3active
{
	if instance_exists(oLord3)
	{
		draw_sprite_ext(sGUI_skillClassArmor,oLord3.thisLord_skillClassArmor,x,y,1,1,0,thisColor,1);
		if thisColor = c_yellow draw_rectangle_color(x,y,x+31,y+31,c_yellow,c_yellow,c_yellow,c_yellow,true);
	}
}