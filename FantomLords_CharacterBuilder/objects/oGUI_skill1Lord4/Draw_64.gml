/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord4active
{
	if instance_exists(oLord4)
	{
		if oLord4.thisLord_typeAttack == "MELEE"
		{
			if mouse_x > x && mouse_x < x+32 && mouse_y > y && mouse_y < y+32 draw_sprite_ext(sGUI_skillAttack,1,x,y,1,1,0,c_yellow,1);
			else draw_sprite(sGUI_skillAttack,1,x,y);
		}
		else if oLord4.thisLord_typeAttack == "RANGED"
		{
			if mouse_x > x && mouse_x < x+32 && mouse_y > y && mouse_y < y+32 draw_sprite_ext(sGUI_skillAttack,2,x,y,1,1,0,c_yellow,1);
			else draw_sprite(sGUI_skillAttack,2,x,y);
		}
	}
}