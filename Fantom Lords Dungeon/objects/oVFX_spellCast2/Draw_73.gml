/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sVFX_spellCast,image_index,x,y,1,1,image_angle,c_white,0.8);

if (oLord2.thisLord_ascend)
{
	if (oLord2.spellCast = 1)
	{
		draw_rectangle_color(oLord2.x,oLord2.y,oLord2.x+64,oLord2.y+64,c_lime,c_lime,c_lime,c_lime,true);
		with oEnemy0_Father
		{
			if revealed
			{
				draw_rectangle_color(x,y,x+64,y+64,c_yellow,c_yellow,c_yellow,c_yellow,true);
			}
		}
	}
	else if (oLord2.spellCast = 12)
	{
		draw_rectangle_color(oLord2.x,oLord2.y,oLord2.x+64,oLord2.y+64,c_lime,c_lime,c_lime,c_lime,true);
	
		if (collision_point(oLord2.x-32,oLord2.y-32,oLord0Parent,false,true) != noone)
		{
			draw_rectangle_color(oLord2.x-64,oLord2.y-64,oLord2.x,oLord2.y,c_lime,c_lime,c_lime,c_lime,true);
		}
		else if (collision_point(oLord2.x-32,oLord2.y-32,oEnemy0_Father,false,true) != noone)
		{
			draw_rectangle_color(oLord2.x-64,oLord2.y-64,oLord2.x,oLord2.y,c_red,c_red,c_red,c_red,true);
		}
	
		if (collision_point(oLord2.x+32,oLord2.y-32,oLord0Parent,false,true) != noone)
		{
			draw_rectangle_color(oLord2.x,oLord2.y-64,oLord2.x+64,oLord2.y,c_lime,c_lime,c_lime,c_lime,true);
		}
		else if (collision_point(oLord2.x+32,oLord2.y-32,oEnemy0_Father,false,true) != noone)
		{
			draw_rectangle_color(oLord2.x,oLord2.y-64,oLord2.x+64,oLord2.y,c_red,c_red,c_red,c_red,true);
		}
	
		if (collision_point(oLord2.x+96,oLord2.y-32,oLord0Parent,false,true) != noone)
		{
			draw_rectangle_color(oLord2.x+64,oLord2.y-64,oLord2.x+128,oLord2.y,c_lime,c_lime,c_lime,c_lime,true);
		}
		else if (collision_point(oLord2.x+96,oLord2.y-32,oEnemy0_Father,false,true) != noone)
		{
			draw_rectangle_color(oLord2.x+64,oLord2.y-64,oLord2.x+128,oLord2.y,c_red,c_red,c_red,c_red,true);
		}
	
		if (collision_point(oLord2.x+96,oLord2.y+32,oLord0Parent,false,true) != noone)
		{
			draw_rectangle_color(oLord2.x+64,oLord2.y,oLord2.x+128,oLord2.y+64,c_lime,c_lime,c_lime,c_lime,true);
		}
		else if (collision_point(oLord2.x+96,oLord2.y+32,oEnemy0_Father,false,true) != noone)
		{
			draw_rectangle_color(oLord2.x+64,oLord2.y,oLord2.x+128,oLord2.y+64,c_red,c_red,c_red,c_red,true);
		}
	
		if (collision_point(oLord2.x+96,oLord2.y+96,oLord0Parent,false,true) != noone)
		{
			draw_rectangle_color(oLord2.x+64,oLord2.y+64,oLord2.x+128,oLord2.y+128,c_lime,c_lime,c_lime,c_lime,true);
		}
		else if (collision_point(oLord2.x+96,oLord2.y+96,oEnemy0_Father,false,true) != noone)
		{
			draw_rectangle_color(oLord2.x+64,oLord2.y+64,oLord2.x+128,oLord2.y+128,c_red,c_red,c_red,c_red,true);
		}
	
		if (collision_point(oLord2.x+32,oLord2.y+96,oLord0Parent,false,true) != noone)
		{
			draw_rectangle_color(oLord2.x,oLord2.y+64,oLord2.x+64,oLord2.y+128,c_lime,c_lime,c_lime,c_lime,true);
		}
		else if (collision_point(oLord2.x+32,oLord2.y+96,oEnemy0_Father,false,true) != noone)
		{
			draw_rectangle_color(oLord2.x,oLord2.y+64,oLord2.x+64,oLord2.y+128,c_red,c_red,c_red,c_red,true);
		}
	
		if (collision_point(oLord2.x-32,oLord2.y+96,oLord0Parent,false,true) != noone)
		{
			draw_rectangle_color(oLord2.x-64,oLord2.y+64,oLord2.x,oLord2.y+128,c_lime,c_lime,c_lime,c_lime,true);
		}
		else if (collision_point(oLord2.x-32,oLord2.y+96,oEnemy0_Father,false,true) != noone)
		{
			draw_rectangle_color(oLord2.x-64,oLord2.y+64,oLord2.x,oLord2.y+128,c_red,c_red,c_red,c_red,true);
		}
	
		if (collision_point(oLord2.x-32,oLord2.y+32,oLord0Parent,false,true) != noone)
		{
			draw_rectangle_color(oLord2.x-64,oLord2.y,oLord2.x,oLord2.y+64,c_lime,c_lime,c_lime,c_lime,true);
		}
		else if (collision_point(oLord2.x-32,oLord2.y+32,oEnemy0_Father,false,true) != noone)
		{
			draw_rectangle_color(oLord2.x-64,oLord2.y,oLord2.x,oLord2.y+64,c_red,c_red,c_red,c_red,true);
		}
	}
	else if (oLord2.spellCast = 13)
	{
		draw_rectangle_color(oLord2.x,oLord2.y,oLord2.x+64,oLord2.y+64,c_lime,c_lime,c_lime,c_lime,true);
	}
}
else
{
	if oLord2.spellCast = 0 ||  oLord2.spellCast = 1  ||  oLord2.spellCast = 12 ||  oLord2.spellCast = 15 //Fire Ball Hydrobolt Magic Missile Swap
	{
		with oMap_0parent
		{
			if stepped
			{
				var enemyT = collision_point(x,y,oEnemy0_Father,0,false);
				if enemyT != noone draw_rectangle_color(enemyT.x+1,enemyT.y+1,enemyT.x+enemyT.sprite_width-1,enemyT.y+enemyT.sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
				else if collision_point(x,y,oLord0Parent,0,false)
				{
					if oLord2.spellCast = 0 draw_rectangle_color(x+1,y+1,x+62,y+62,c_red,c_red,c_red,c_red,true);
					else draw_rectangle_color(x+1,y+1,x+62,y+62,c_grey,c_grey,c_grey,c_grey,true);
				}
				else draw_rectangle_color(x+1,y+1,x+62,y+62,c_grey,c_grey,c_grey,c_grey,true);
			}
		}
	}
	else if oLord2.spellCast = 3 || oLord2.spellCast = 2 //Soul Syphon //poison
	{
		with oEnemy0_Father
		{
				 if x = oLord2.x && y = oLord2.y-64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord2.x+64 && y = oLord2.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord2.x && y = oLord2.y+64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord2.x-64 && y = oLord2.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		
		}
	}
	else if oLord2.spellCast = 4 //Slay
	{
		with oEnemy0_Father
		{
				 if x = oLord2.x && y = oLord2.y-64 && thisLIF = thisLIFmax draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord2.x+64 && y = oLord2.y && thisLIF = thisLIFmax draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord2.x && y = oLord2.y+64 && thisLIF = thisLIFmax draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord2.x-64 && y = oLord2.y && thisLIF = thisLIFmax draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		}
	}
	else if oLord2.spellCast = 5 //QUAKE
	{
		draw_rectangle_color(oLord2.x-63,oLord2.y+1,oLord2.x-1,oLord2.y+63,c_yellow,c_yellow,c_yellow,c_yellow,true);
		draw_rectangle_color(oLord2.x+1,oLord2.y-63,oLord2.x+64,oLord2.y-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		draw_rectangle_color(oLord2.x+127,oLord2.y+1,oLord2.x+65,oLord2.y+63,c_yellow,c_yellow,c_yellow,c_yellow,true);
		draw_rectangle_color(oLord2.x+1,oLord2.y+65,oLord2.x+63,oLord2.y+125,c_yellow,c_yellow,c_yellow,c_yellow,true);
		draw_rectangle_color(oLord2.x-127,oLord2.y+1,oLord2.x-1,oLord2.y+63,c_yellow,c_yellow,c_yellow,c_yellow,true);
		draw_rectangle_color(oLord2.x+1,oLord2.y-127,oLord2.x+64,oLord2.y-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		draw_rectangle_color(oLord2.x+191,oLord2.y+1,oLord2.x+65,oLord2.y+63,c_yellow,c_yellow,c_yellow,c_yellow,true);
		draw_rectangle_color(oLord2.x+1,oLord2.y+1,oLord2.x+63,oLord2.y+190,c_yellow,c_yellow,c_yellow,c_yellow,true);
	}
	else if oLord2.spellCast = 6 //Revenge
	{
		with oEnemy0_Father
		{
				 if x = oLord2.x && y = oLord2.y-64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord2.x+64 && y = oLord2.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord2.x && y = oLord2.y+64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord2.x-64 && y = oLord2.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		}
	}
	else if oLord2.spellCast = 7 //Blade Whirl
	{
		with oEnemy0_Father
		{
				 if x = oLord2.x && y = oLord2.y-64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord2.x+64 && y = oLord2.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord2.x && y = oLord2.y+64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord2.x-64 && y = oLord2.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord2.x-64 && y+64 = oLord2.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord2.x+64 && y-64 = oLord2.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord2.x-64 && y-64 = oLord2.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord2.x+64 && y+64 = oLord2.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		}
		with oLord0Parent
		{
				 if x = oLord2.x && y = oLord2.y-64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_red,c_red,c_red,c_red,true);
			else if x = oLord2.x+64 && y = oLord2.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_red,c_red,c_red,c_red,true);
			else if x = oLord2.x && y = oLord2.y+64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_red,c_red,c_red,c_red,true);
			else if x = oLord2.x-64 && y = oLord2.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_red,c_red,c_red,c_red,true);
			else if x = oLord2.x+64 && y-64 = oLord2.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_red,c_red,c_red,c_red,true);
			else if x = oLord2.x-64 && y-64 = oLord2.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_red,c_red,c_red,c_red,true);
			else if x = oLord2.x+64 && y+64 = oLord2.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_red,c_red,c_red,c_red,true);
		}
	}
	else if oLord2.spellCast = 8 //CLOSESHOT
	{
		with oEnemy0_Father
		{
				 if x = oLord2.x && y = oLord2.y-64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord2.x+64 && y = oLord2.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord2.x && y = oLord2.y+64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord2.x-64 && y = oLord2.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		}
	}
	else if oLord2.spellCast = 10 //MOONBLAST
	{
		//left
		draw_rectangle_color(oLord2.x-63,oLord2.y+1,oLord2.x-1,oLord2.y+63,c_yellow,c_yellow,c_yellow,c_yellow,true);
		if mouse_x < oLord2.x && mouse_y > oLord2.y && mouse_y < oLord2.y+64
		{
			draw_rectangle_color(oLord2.x-127,oLord2.y+1,oLord2.x-65,oLord2.y+63,c_yellow,c_yellow,c_yellow,c_yellow,true);
			draw_rectangle_color(oLord2.x-127,oLord2.y-63,oLord2.x-65,oLord2.y-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			draw_rectangle_color(oLord2.x-127,oLord2.y+65,oLord2.x-65,oLord2.y+127,c_yellow,c_yellow,c_yellow,c_yellow,true);
		}
		//up
		draw_rectangle_color(oLord2.x+1,oLord2.y-63,oLord2.x+64,oLord2.y-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		if mouse_y < oLord2.y && mouse_x > oLord2.x && mouse_x < oLord2.x+64
		{
			draw_rectangle_color(oLord2.x+1,oLord2.y-127,oLord2.x+64,oLord2.y-65,c_yellow,c_yellow,c_yellow,c_yellow,true);
			draw_rectangle_color(oLord2.x-63,oLord2.y-127,oLord2.x-1,oLord2.y-65,c_yellow,c_yellow,c_yellow,c_yellow,true);
			draw_rectangle_color(oLord2.x+127,oLord2.y-127,oLord2.x+65,oLord2.y-65,c_yellow,c_yellow,c_yellow,c_yellow,true);
		}
		//right
		draw_rectangle_color(oLord2.x+127,oLord2.y+1,oLord2.x+65,oLord2.y+63,c_yellow,c_yellow,c_yellow,c_yellow,true);
		if mouse_x > oLord2.x+64 && mouse_y > oLord2.y && mouse_y < oLord2.y+64
		{
			draw_rectangle_color(oLord2.x+191,oLord2.y+1,oLord2.x+127,oLord2.y+63,c_yellow,c_yellow,c_yellow,c_yellow,true);
			draw_rectangle_color(oLord2.x+191,oLord2.y-63,oLord2.x+127,oLord2.y-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			draw_rectangle_color(oLord2.x+191,oLord2.y+65,oLord2.x+127,oLord2.y+127,c_yellow,c_yellow,c_yellow,c_yellow,true);
		}
		//down
		draw_rectangle_color(oLord2.x+1,oLord2.y+65,oLord2.x+63,oLord2.y+125,c_yellow,c_yellow,c_yellow,c_yellow,true);
		if mouse_y > oLord2.y+64 && mouse_x > oLord2.x && mouse_x < oLord2.x+64
		{
			draw_rectangle_color(oLord2.x+1,oLord2.y+127,oLord2.x+63,oLord2.y+190,c_yellow,c_yellow,c_yellow,c_yellow,true);
			draw_rectangle_color(oLord2.x-63,oLord2.y+127,oLord2.x-1,oLord2.y+190,c_yellow,c_yellow,c_yellow,c_yellow,true);
			draw_rectangle_color(oLord2.x+127,oLord2.y+127,oLord2.x+64,oLord2.y+190,c_yellow,c_yellow,c_yellow,c_yellow,true);
		}
	}
	else if oLord2.spellCast = 9 ^^ oLord2.spellCast = 13 //BASH //DRAINSLASH
	{
		with oEnemy0_Father if target draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
	}
	else if oLord2.spellCast = 11 //HEAL SONG
	{
		with oLord0Parent draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_lime,c_lime,c_lime,c_lime,true);
	}
	else if oLord2.spellCast = 14 //Storm
	{
		with oEnemy0_Father if revealed draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
	}
}