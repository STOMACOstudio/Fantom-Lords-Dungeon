/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sVFX_spellCast,image_index,x,y,1,1,image_angle,c_white,0.8);

if oLord1.spellCast = 0 //TRAP
{
	if trap != noone with trap draw_rectangle_color(x+1,y+1,x+62,y+62,c_yellow,c_yellow,c_yellow,c_yellow,true);
}
else if oLord1.spellCast = 1 ^^ oLord1.spellCast = 2 ^^ oLord1.spellCast = 10 //SHADOW //SUNBATHE //BATTLECRY
{
	draw_rectangle_color(oLord1.x+1,oLord1.y+1,oLord1.x+62,oLord1.y+62,c_lime,c_lime,c_lime,c_lime,true);
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
if oLord1.spellCast = 4 || oLord1.spellCast = 11 //Weaken //stun
{
	with oEnemy0_Father
	{
			 if x = oLord1.x && y = oLord1.y-64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		else if x = oLord1.x+64 && y = oLord1.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		else if x = oLord1.x && y = oLord1.y+64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		else if x = oLord1.x-64 && y = oLord1.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		
	}
}
else if oLord1.spellCast = 5 //TELEPORT
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