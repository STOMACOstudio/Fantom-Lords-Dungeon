/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord4active
{
	if instance_exists(oLord4)
	{
		draw_sprite_ext(sGUI_skillWeapon,oLord4.thisLord_skillWeapon,x,y,1,1,0,thisColor,1);
		if thisColor = c_yellow draw_rectangle_color(x,y,x+31,y+31,c_yellow,c_yellow,c_yellow,c_yellow,true);
	}
}