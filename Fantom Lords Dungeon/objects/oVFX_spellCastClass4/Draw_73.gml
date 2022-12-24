/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sVFX_spellCast,image_index,x,y,1,1,image_angle,c_white,0.8);

if oLord4.thisLord_ascend
{
	if (oLord4.spellCast = 0) //Path
	{
		draw_rectangle_color(oLord4.x,oLord4.y,oLord4.x+64,oLord4.y+64,c_lime,c_lime,c_lime,c_lime,true);
	}
	else if oLord4.spellCast = 2 //Clash
	{
		with oEnemy0_Father
		{
				 if x = oLord4.x && y = oLord4.y-64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord4.x+64 && y = oLord4.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord4.x && y = oLord4.y+64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord4.x-64 && y = oLord4.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		
		}
	}
	else if (oLord4.spellCast = 1 || oLord4.spellCast = 3) //Bless //LifeBreath
	{
		with oLord0Parent draw_rectangle_color(x,y,x+64,y+64,c_lime,c_lime,c_lime,c_lime,true);
	}	
	else if (oLord4.spellCast = 5) //Honor
	{
		with oLord0Parent draw_rectangle_color(x,y,x+64,y+64,c_lime,c_lime,c_lime,c_lime,true);
		draw_rectangle_color(oLord4.x,oLord4.y,oLord4.x+64,oLord4.y+64,c_yellow,c_yellow,c_yellow,c_yellow,true);
		
	}
	else if (oLord4.spellCast = 6) //Beam
	{
		with oEnemy0_Father
		{
			if revealed
			{
				draw_rectangle_color(x,y,x+64,y+64,c_yellow,c_yellow,c_yellow,c_yellow,true);
			}
		}
	}
	else if (oLord4.spellCast = 4 || oLord4.spellCast = 7) //Drain
	{
		with oEnemy0_Father
		{
			if (!obstacle)
			{
				if x = oLord4.x && y = oLord4.y-64 draw_rectangle_color(x,y,x+64,y+64,c_lime,c_lime,c_lime,c_lime,true);
				else if x = oLord4.x+64 && y = oLord4.y draw_rectangle_color(x,y,x+64,y+64,c_lime,c_lime,c_lime,c_lime,true);
				else if x = oLord4.x && y = oLord4.y+64 draw_rectangle_color(x,y,x+64,y+64,c_lime,c_lime,c_lime,c_lime,true);
				else if x = oLord4.x-64 && y = oLord4.y draw_rectangle_color(x,y,x+64,y+64,c_lime,c_lime,c_lime,c_lime,true);
				else if x = oLord4.x+64 && y = oLord4.y-64 draw_rectangle_color(x,y,x+64,y+64,c_lime,c_lime,c_lime,c_lime,true);
				else if x = oLord4.x+64 && y = oLord4.y+64 draw_rectangle_color(x,y,x+64,y+64,c_lime,c_lime,c_lime,c_lime,true);
				else if x = oLord4.x-64 && y = oLord4.y+64 draw_rectangle_color(x,y,x+64,y+64,c_lime,c_lime,c_lime,c_lime,true);
				else if x = oLord4.x-64 && y = oLord4.y-64 draw_rectangle_color(x,y,x+64,y+64,c_lime,c_lime,c_lime,c_lime,true);
			}
		}
	}
}
else
{
	if oLord4.spellCast = 0 //TRAP
	{
		if trap != noone with trap draw_rectangle_color(x+1,y+1,x+62,y+62,c_yellow,c_yellow,c_yellow,c_yellow,true);
	}
	else if oLord4.spellCast = 2 //SUNBATHE
	{
		draw_rectangle_color(oLord4.x+1,oLord4.y+1,oLord4.x+62,oLord4.y+62,c_lime,c_lime,c_lime,c_lime,true);
	}
	else if oLord4.spellCast = 1 ^^ oLord4.spellCast = 2 ^^ oLord4.spellCast = 10 //SHADOW //SUNBATHE //BATTLECRY
	{
		if lord != noone
		{
			if (lord.x = oLord4.x && lord.y = oLord4.y-64) || (lord.x = oLord4.x+64 && lord.y = oLord4.y) || (lord.x = oLord4.x && lord.y = oLord4.y+64) || (lord.x = oLord4.x-64 && lord.y = oLord4.y)
			{
				draw_rectangle_color(lord.x+1,lord.y+1,lord.x+62,lord.y+62,c_lime,c_lime,c_lime,c_lime,true);
			}
		}
	}
	if oLord4.spellCast = 4 || oLord4.spellCast = 11 //Weaken //stun
	{
		with oEnemy0_Father
		{
				 if x = oLord4.x && y = oLord4.y-64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord4.x+64 && y = oLord4.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord4.x && y = oLord4.y+64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord4.x-64 && y = oLord4.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		
		}
	}
	else if oLord4.spellCast = 5 //TELEPORT
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
	if oLord4.spellCast = 6 //Lullaby
	{
		with oEnemy0_Father if revealed && !obstacle draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
	}
	else if oLord4.spellCast = 7 //Burden
	{
		if lord != noone
		{
			if (lord.x = oLord4.x && lord.y = oLord4.y-64) || (lord.x = oLord4.x+64 && lord.y = oLord4.y) || (lord.x = oLord4.x && lord.y = oLord4.y+64) || (lord.x = oLord4.x-64 && lord.y = oLord4.y) || (lord.x = oLord4.x && lord.y = oLord4.y)
			{
				draw_rectangle_color(lord.x+1,lord.y+1,lord.x+62,lord.y+62,c_lime,c_lime,c_lime,c_lime,true);
			}
		}
	}
	if oLord4.spellCast = 8 //Burn
	{
		with oEnemy0_Father
		{
				 if x = oLord4.x && y = oLord4.y-64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord4.x+64 && y = oLord4.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord4.x && y = oLord4.y+64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord4.x-64 && y = oLord4.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord4.x-64 && y+64 = oLord4.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord4.x+64 && y-64 = oLord4.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord4.x-64 && y-64 = oLord4.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord4.x+64 && y+64 = oLord4.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		}
		with oLord0Parent
		{
				 if x = oLord4.x && y = oLord4.y-64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_red,c_red,c_red,c_red,true);
			else if x = oLord4.x+64 && y = oLord4.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_red,c_red,c_red,c_red,true);
			else if x = oLord4.x && y = oLord4.y+64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_red,c_red,c_red,c_red,true);
			else if x = oLord4.x-64 && y = oLord4.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_red,c_red,c_red,c_red,true);
			else if x = oLord4.x+64 && y-64 = oLord4.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_red,c_red,c_red,c_red,true);
			else if x = oLord4.x-64 && y-64 = oLord4.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_red,c_red,c_red,c_red,true);
			else if x = oLord4.x+64 && y+64 = oLord4.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_red,c_red,c_red,c_red,true);
		}
	}
}