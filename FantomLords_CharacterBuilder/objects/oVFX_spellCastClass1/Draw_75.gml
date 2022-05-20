/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sVFX_spellCast,image_index,x,y,1,1,image_angle,c_white,0.8);

if oLord1.spellCast = 0 //TRAP
{
	if trap != noone with trap draw_rectangle_color(x+1,y+1,x+62,y+62,c_yellow,c_yellow,c_yellow,c_yellow,true);
}
else if oLord1.spellCast = 3 //SUTURE
{
	if lord != noone
	{
		if (lord.x = oLord1.x && lord.y = oLord1.y-64) || (lord.x = oLord1.x+64 && lord.y = oLord1.y) || (lord.x = oLord1.x && lord.y = oLord1.y+64) || (lord.x = oLord1.x-64 && lord.y = oLord1.y)
		{
			draw_rectangle_color(lord.x+1,lord.y+1,lord.x+62,lord.y+62,c_lime,c_lime,c_lime,c_lime,true);
		}
	}
}
