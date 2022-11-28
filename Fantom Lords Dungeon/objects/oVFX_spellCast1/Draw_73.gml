/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sVFX_spellCast,image_index,x,y,1,1,image_angle,c_white,0.8);

if (oLord1.thisLord_ascend)
{
	if (oLord1.spellCast = 12)
	{
		draw_rectangle_color(oLord1.x,oLord1.y,oLord1.x+64,oLord1.y+64,c_lime,c_lime,c_lime,c_lime,true);
	
		if (collision_point(oLord1.x-32,oLord1.y-32,oLord0Parent,false,true) != noone)
		{
			draw_rectangle_color(oLord1.x-64,oLord1.y-64,oLord1.x,oLord1.y,c_lime,c_lime,c_lime,c_lime,true);
		}
		else if (collision_point(oLord1.x-32,oLord1.y-32,oEnemy0_Father,false,true) != noone)
		{
			draw_rectangle_color(oLord1.x-64,oLord1.y-64,oLord1.x,oLord1.y,c_red,c_red,c_red,c_red,true);
		}
	
		if (collision_point(oLord1.x+32,oLord1.y-32,oLord0Parent,false,true) != noone)
		{
			draw_rectangle_color(oLord1.x,oLord1.y-64,oLord1.x+64,oLord1.y,c_lime,c_lime,c_lime,c_lime,true);
		}
		else if (collision_point(oLord1.x+32,oLord1.y-32,oEnemy0_Father,false,true) != noone)
		{
			draw_rectangle_color(oLord1.x,oLord1.y-64,oLord1.x+64,oLord1.y,c_red,c_red,c_red,c_red,true);
		}
	
		if (collision_point(oLord1.x+96,oLord1.y-32,oLord0Parent,false,true) != noone)
		{
			draw_rectangle_color(oLord1.x+64,oLord1.y-64,oLord1.x+128,oLord1.y,c_lime,c_lime,c_lime,c_lime,true);
		}
		else if (collision_point(oLord1.x+96,oLord1.y-32,oEnemy0_Father,false,true) != noone)
		{
			draw_rectangle_color(oLord1.x+64,oLord1.y-64,oLord1.x+128,oLord1.y,c_red,c_red,c_red,c_red,true);
		}
	
		if (collision_point(oLord1.x+96,oLord1.y+32,oLord0Parent,false,true) != noone)
		{
			draw_rectangle_color(oLord1.x+64,oLord1.y,oLord1.x+128,oLord1.y+64,c_lime,c_lime,c_lime,c_lime,true);
		}
		else if (collision_point(oLord1.x+96,oLord1.y+32,oEnemy0_Father,false,true) != noone)
		{
			draw_rectangle_color(oLord1.x+64,oLord1.y,oLord1.x+128,oLord1.y+64,c_red,c_red,c_red,c_red,true);
		}
	
		if (collision_point(oLord1.x+96,oLord1.y+96,oLord0Parent,false,true) != noone)
		{
			draw_rectangle_color(oLord1.x+64,oLord1.y+64,oLord1.x+128,oLord1.y+128,c_lime,c_lime,c_lime,c_lime,true);
		}
		else if (collision_point(oLord1.x+96,oLord1.y+96,oEnemy0_Father,false,true) != noone)
		{
			draw_rectangle_color(oLord1.x+64,oLord1.y+64,oLord1.x+128,oLord1.y+128,c_red,c_red,c_red,c_red,true);
		}
	
		if (collision_point(oLord1.x+32,oLord1.y+96,oLord0Parent,false,true) != noone)
		{
			draw_rectangle_color(oLord1.x,oLord1.y+64,oLord1.x+64,oLord1.y+128,c_lime,c_lime,c_lime,c_lime,true);
		}
		else if (collision_point(oLord1.x+32,oLord1.y+96,oEnemy0_Father,false,true) != noone)
		{
			draw_rectangle_color(oLord1.x,oLord1.y+64,oLord1.x+64,oLord1.y+128,c_red,c_red,c_red,c_red,true);
		}
	
		if (collision_point(oLord1.x-32,oLord1.y+96,oLord0Parent,false,true) != noone)
		{
			draw_rectangle_color(oLord1.x-64,oLord1.y+64,oLord1.x,oLord1.y+128,c_lime,c_lime,c_lime,c_lime,true);
		}
		else if (collision_point(oLord1.x-32,oLord1.y+96,oEnemy0_Father,false,true) != noone)
		{
			draw_rectangle_color(oLord1.x-64,oLord1.y+64,oLord1.x,oLord1.y+128,c_red,c_red,c_red,c_red,true);
		}
	
		if (collision_point(oLord1.x-32,oLord1.y+32,oLord0Parent,false,true) != noone)
		{
			draw_rectangle_color(oLord1.x-64,oLord1.y,oLord1.x,oLord1.y+64,c_lime,c_lime,c_lime,c_lime,true);
		}
		else if (collision_point(oLord1.x-32,oLord1.y+32,oEnemy0_Father,false,true) != noone)
		{
			draw_rectangle_color(oLord1.x-64,oLord1.y,oLord1.x,oLord1.y+64,c_red,c_red,c_red,c_red,true);
		}
	}	
	else if (oLord1.spellCast = 13)
	{
		draw_rectangle_color(oLord1.x,oLord1.y,oLord1.x+64,oLord1.y+64,c_lime,c_lime,c_lime,c_lime,true);
	}
}
else
{
	if oLord1.spellCast = 0 ||  oLord1.spellCast = 1  ||  oLord1.spellCast = 12 ||  oLord1.spellCast = 15 //Fire Ball Hydrobolt Magic Missile Swap
	{
		with oMap_0parent
		{
			if stepped
			{
				var enemyT = collision_point(x,y,oEnemy0_Father,0,false);
				if enemyT != noone draw_rectangle_color(enemyT.x+1,enemyT.y+1,enemyT.x+enemyT.sprite_width-1,enemyT.y+enemyT.sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
				else if collision_point(x,y,oLord0Parent,0,false)
				{
					if oLord1.spellCast = 0 draw_rectangle_color(x+1,y+1,x+62,y+62,c_red,c_red,c_red,c_red,true);
					else draw_rectangle_color(x+1,y+1,x+62,y+62,c_grey,c_grey,c_grey,c_grey,true);
				}
				else draw_rectangle_color(x+1,y+1,x+62,y+62,c_grey,c_grey,c_grey,c_grey,true);
			}
		}
	}
	else if oLord1.spellCast = 3 || oLord1.spellCast = 2 //Soul Syphon //poison
	{
		with oEnemy0_Father
		{
				 if x = oLord1.x && y = oLord1.y-64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord1.x+64 && y = oLord1.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord1.x && y = oLord1.y+64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord1.x-64 && y = oLord1.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		
		}
	}
	else if oLord1.spellCast = 4 //Slay
	{
		with oEnemy0_Father
		{
				 if x = oLord1.x && y = oLord1.y-64 && thisLIF = thisLIFmax draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord1.x+64 && y = oLord1.y && thisLIF = thisLIFmax draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord1.x && y = oLord1.y+64 && thisLIF = thisLIFmax draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord1.x-64 && y = oLord1.y && thisLIF = thisLIFmax draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		}
	}
	else if oLord1.spellCast = 5 //QUAKE
	{
		draw_rectangle_color(oLord1.x-63,oLord1.y+1,oLord1.x-1,oLord1.y+63,c_yellow,c_yellow,c_yellow,c_yellow,true);
		draw_rectangle_color(oLord1.x+1,oLord1.y-63,oLord1.x+64,oLord1.y-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		draw_rectangle_color(oLord1.x+127,oLord1.y+1,oLord1.x+65,oLord1.y+63,c_yellow,c_yellow,c_yellow,c_yellow,true);
		draw_rectangle_color(oLord1.x+1,oLord1.y+65,oLord1.x+63,oLord1.y+125,c_yellow,c_yellow,c_yellow,c_yellow,true);
		draw_rectangle_color(oLord1.x-127,oLord1.y+1,oLord1.x-1,oLord1.y+63,c_yellow,c_yellow,c_yellow,c_yellow,true);
		draw_rectangle_color(oLord1.x+1,oLord1.y-127,oLord1.x+64,oLord1.y-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		draw_rectangle_color(oLord1.x+191,oLord1.y+1,oLord1.x+65,oLord1.y+63,c_yellow,c_yellow,c_yellow,c_yellow,true);
		draw_rectangle_color(oLord1.x+1,oLord1.y+1,oLord1.x+63,oLord1.y+190,c_yellow,c_yellow,c_yellow,c_yellow,true);
	}
	else if oLord1.spellCast = 6 //Revenge
	{
		with oEnemy0_Father
		{
				 if x = oLord1.x && y = oLord1.y-64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord1.x+64 && y = oLord1.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord1.x && y = oLord1.y+64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord1.x-64 && y = oLord1.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		}
	}
	else if oLord1.spellCast = 7 //Blade Whirl
	{
		with oEnemy0_Father
		{
				 if x = oLord1.x && y = oLord1.y-64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord1.x+64 && y = oLord1.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord1.x && y = oLord1.y+64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord1.x-64 && y = oLord1.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord1.x-64 && y+64 = oLord1.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord1.x+64 && y-64 = oLord1.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord1.x-64 && y-64 = oLord1.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord1.x+64 && y+64 = oLord1.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		}
		with oLord0Parent
		{
				 if x = oLord1.x && y = oLord1.y-64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_red,c_red,c_red,c_red,true);
			else if x = oLord1.x+64 && y = oLord1.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_red,c_red,c_red,c_red,true);
			else if x = oLord1.x && y = oLord1.y+64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_red,c_red,c_red,c_red,true);
			else if x = oLord1.x-64 && y = oLord1.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_red,c_red,c_red,c_red,true);
			else if x = oLord1.x+64 && y-64 = oLord1.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_red,c_red,c_red,c_red,true);
			else if x = oLord1.x-64 && y-64 = oLord1.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_red,c_red,c_red,c_red,true);
			else if x = oLord1.x+64 && y+64 = oLord1.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_red,c_red,c_red,c_red,true);
		}
	}
	else if oLord1.spellCast = 8 //CLOSESHOT
	{
		with oEnemy0_Father
		{
				 if x = oLord1.x && y = oLord1.y-64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord1.x+64 && y = oLord1.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord1.x && y = oLord1.y+64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if x = oLord1.x-64 && y = oLord1.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		}
	}
	else if oLord1.spellCast = 10 //MOONBLAST
	{
		//left
		draw_rectangle_color(oLord1.x-63,oLord1.y+1,oLord1.x-1,oLord1.y+63,c_yellow,c_yellow,c_yellow,c_yellow,true);
		if mouse_x < oLord1.x && mouse_y > oLord1.y && mouse_y < oLord1.y+64
		{
			draw_rectangle_color(oLord1.x-127,oLord1.y+1,oLord1.x-65,oLord1.y+63,c_yellow,c_yellow,c_yellow,c_yellow,true);
			draw_rectangle_color(oLord1.x-127,oLord1.y-63,oLord1.x-65,oLord1.y-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			draw_rectangle_color(oLord1.x-127,oLord1.y+65,oLord1.x-65,oLord1.y+127,c_yellow,c_yellow,c_yellow,c_yellow,true);
		}
		//up
		draw_rectangle_color(oLord1.x+1,oLord1.y-63,oLord1.x+64,oLord1.y-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		if mouse_y < oLord1.y && mouse_x > oLord1.x && mouse_x < oLord1.x+64
		{
			draw_rectangle_color(oLord1.x+1,oLord1.y-127,oLord1.x+64,oLord1.y-65,c_yellow,c_yellow,c_yellow,c_yellow,true);
			draw_rectangle_color(oLord1.x-63,oLord1.y-127,oLord1.x-1,oLord1.y-65,c_yellow,c_yellow,c_yellow,c_yellow,true);
			draw_rectangle_color(oLord1.x+127,oLord1.y-127,oLord1.x+65,oLord1.y-65,c_yellow,c_yellow,c_yellow,c_yellow,true);
		}
		//right
		draw_rectangle_color(oLord1.x+127,oLord1.y+1,oLord1.x+65,oLord1.y+63,c_yellow,c_yellow,c_yellow,c_yellow,true);
		if mouse_x > oLord1.x+64 && mouse_y > oLord1.y && mouse_y < oLord1.y+64
		{
			draw_rectangle_color(oLord1.x+191,oLord1.y+1,oLord1.x+127,oLord1.y+63,c_yellow,c_yellow,c_yellow,c_yellow,true);
			draw_rectangle_color(oLord1.x+191,oLord1.y-63,oLord1.x+127,oLord1.y-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			draw_rectangle_color(oLord1.x+191,oLord1.y+65,oLord1.x+127,oLord1.y+127,c_yellow,c_yellow,c_yellow,c_yellow,true);
		}
		//down
		draw_rectangle_color(oLord1.x+1,oLord1.y+65,oLord1.x+63,oLord1.y+125,c_yellow,c_yellow,c_yellow,c_yellow,true);
		if mouse_y > oLord1.y+64 && mouse_x > oLord1.x && mouse_x < oLord1.x+64
		{
			draw_rectangle_color(oLord1.x+1,oLord1.y+127,oLord1.x+63,oLord1.y+190,c_yellow,c_yellow,c_yellow,c_yellow,true);
			draw_rectangle_color(oLord1.x-63,oLord1.y+127,oLord1.x-1,oLord1.y+190,c_yellow,c_yellow,c_yellow,c_yellow,true);
			draw_rectangle_color(oLord1.x+127,oLord1.y+127,oLord1.x+64,oLord1.y+190,c_yellow,c_yellow,c_yellow,c_yellow,true);
		}
	}
	else if oLord1.spellCast = 9 ^^ oLord1.spellCast = 13//BASH //DRAINSLASH
	{
		with oEnemy0_Father if target draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
	}
	else if oLord1.spellCast = 11 //HEAL SONG
	{
		with oLord0Parent draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_lime,c_lime,c_lime,c_lime,true);
	}
	else if oLord1.spellCast = 14 //Storm
	{
		with oEnemy0_Father if revealed draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
	}
}