/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sVFX_spellCast,image_index,x,y,1,1,image_angle,c_white,0.8);

if oLord3.spellCast = 0 //TRAP
{
	if trap != noone with trap draw_rectangle_color(x+1,y+1,x+62,y+62,c_yellow,c_yellow,c_yellow,c_yellow,true);
}
else if oLord3.spellCast = 2 //SUNBATHE
{
	draw_rectangle_color(oLord3.x+1,oLord3.y+1,oLord3.x+62,oLord3.y+62,c_lime,c_lime,c_lime,c_lime,true);
}
else if oLord3.spellCast = 3 //SUTURE
{
	if lord != noone
	{
		if (lord.x = oLord3.x && lord.y = oLord3.y-64) || (lord.x = oLord3.x+64 && lord.y = oLord3.y) || (lord.x = oLord3.x && lord.y = oLord3.y+64) || (lord.x = oLord3.x-64 && lord.y = oLord3.y)
		{
			draw_rectangle_color(lord.x+1,lord.y+1,lord.x+62,lord.y+62,c_lime,c_lime,c_lime,c_lime,true);
		}
	}
}
else if oLord3.spellCast = 5 //TELEPORT
{
	with oMap_0parent
	{
		if stepped
		{
			if empty draw_rectangle_color(x+1,y+1,x+62,y+62,c_lime,c_lime,c_lime,c_lime,true);
			else draw_rectangle_color(x+1,y+1,x+62,y+62,c_red,c_red,c_red,c_red,true);
		}
	}
}