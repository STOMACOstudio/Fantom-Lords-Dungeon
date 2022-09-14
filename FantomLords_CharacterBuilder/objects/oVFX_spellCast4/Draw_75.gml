/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sVFX_spellCast,image_index,x,y,1,1,image_angle,c_white,0.8);

if oLord4.spellCast = 0 //Fire Ball
{
	with oMap_0parent
	{
		if stepped
		{
			var enemyT = collision_point(x,y,oEnemy0_Father,0,false);
			if enemyT != noone draw_rectangle_color(enemyT.x+1,enemyT.y+1,enemyT.x+enemyT.sprite_width-1,enemyT.y+enemyT.sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if collision_point(x,y,oLord0Parent,0,false) draw_rectangle_color(x+1,y+1,x+62,y+62,c_red,c_red,c_red,c_red,true);
			else draw_rectangle_color(x+1,y+1,x+62,y+62,c_grey,c_grey,c_grey,c_grey,true);
		}
	}
}
if oLord4.spellCast = 3 //Soul Syphon
{
	with oEnemy0_Father
	{
			 if x = oLord4.x && y = oLord4.y-64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		else if x = oLord4.x+64 && y = oLord4.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		else if x = oLord4.x && y = oLord4.y+64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		else if x = oLord4.x-64 && y = oLord4.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		
	}
}
if oLord4.spellCast = 4 //Slay
{
	with oEnemy0_Father
	{
			 if x = oLord4.x && y = oLord4.y-64 && thisLIF = thisLIFmax draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		else if x = oLord4.x+64 && y = oLord4.y && thisLIF = thisLIFmax draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		else if x = oLord4.x && y = oLord4.y+64 && thisLIF = thisLIFmax draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		else if x = oLord4.x-64 && y = oLord4.y && thisLIF = thisLIFmax draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
	}
}
if oLord4.spellCast = 6 //Revenge
{
	with oEnemy0_Father
	{
			 if x = oLord4.x && y = oLord4.y-64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		else if x = oLord4.x+64 && y = oLord4.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		else if x = oLord4.x && y = oLord4.y+64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		else if x = oLord4.x-64 && y = oLord4.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
	}
}
if oLord4.spellCast = 7 //Blade Whirl
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
else if oLord4.spellCast = 8 //CLOSESHOT
{
	with oEnemy0_Father
	{
			 if x = oLord4.x && y = oLord4.y-64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		else if x = oLord4.x+64 && y = oLord4.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		else if x = oLord4.x && y = oLord4.y+64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		else if x = oLord4.x-64 && y = oLord4.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
	}
}
else if oLord4.spellCast = 10 //MOONBLAST
{
	//left
	draw_rectangle_color(oLord4.x-63,oLord4.y+1,oLord4.x-1,oLord4.y+63,c_yellow,c_yellow,c_yellow,c_yellow,true);
	if mouse_x < oLord4.x && mouse_y > oLord4.y && mouse_y < oLord4.y+64
	{
		draw_rectangle_color(oLord4.x-127,oLord4.y+1,oLord4.x-65,oLord4.y+63,c_yellow,c_yellow,c_yellow,c_yellow,true);
		draw_rectangle_color(oLord4.x-127,oLord4.y-63,oLord4.x-65,oLord4.y-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		draw_rectangle_color(oLord4.x-127,oLord4.y+65,oLord4.x-65,oLord4.y+127,c_yellow,c_yellow,c_yellow,c_yellow,true);
	}
	//up
	draw_rectangle_color(oLord4.x+1,oLord4.y-63,oLord4.x+64,oLord4.y-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
	if mouse_y < oLord4.y && mouse_x > oLord4.x && mouse_x < oLord4.x+64
	{
		draw_rectangle_color(oLord4.x+1,oLord4.y-127,oLord4.x+64,oLord4.y-65,c_yellow,c_yellow,c_yellow,c_yellow,true);
		draw_rectangle_color(oLord4.x-63,oLord4.y-127,oLord4.x-1,oLord4.y-65,c_yellow,c_yellow,c_yellow,c_yellow,true);
		draw_rectangle_color(oLord4.x+127,oLord4.y-127,oLord4.x+65,oLord4.y-65,c_yellow,c_yellow,c_yellow,c_yellow,true);
	}
	//right
	draw_rectangle_color(oLord4.x+127,oLord4.y+1,oLord4.x+65,oLord4.y+63,c_yellow,c_yellow,c_yellow,c_yellow,true);
	if mouse_x > oLord4.x+64 && mouse_y > oLord4.y && mouse_y < oLord4.y+64
	{
		draw_rectangle_color(oLord4.x+191,oLord4.y+1,oLord4.x+127,oLord4.y+63,c_yellow,c_yellow,c_yellow,c_yellow,true);
		draw_rectangle_color(oLord4.x+191,oLord4.y-63,oLord4.x+127,oLord4.y-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		draw_rectangle_color(oLord4.x+191,oLord4.y+65,oLord4.x+127,oLord4.y+127,c_yellow,c_yellow,c_yellow,c_yellow,true);
	}
	//down
	draw_rectangle_color(oLord4.x+1,oLord4.y+65,oLord4.x+63,oLord4.y+125,c_yellow,c_yellow,c_yellow,c_yellow,true);
	if mouse_y > oLord4.y+64 && mouse_x > oLord4.x && mouse_x < oLord4.x+64
	{
		draw_rectangle_color(oLord4.x+1,oLord4.y+127,oLord4.x+63,oLord4.y+190,c_yellow,c_yellow,c_yellow,c_yellow,true);
		draw_rectangle_color(oLord4.x-63,oLord4.y+127,oLord4.x-1,oLord4.y+190,c_yellow,c_yellow,c_yellow,c_yellow,true);
		draw_rectangle_color(oLord4.x+127,oLord4.y+127,oLord4.x+64,oLord4.y+190,c_yellow,c_yellow,c_yellow,c_yellow,true);
	}
}
else if oLord4.spellCast = 9 ^^ oLord4.spellCast = 13 //BASH //DRAINSLASH
{
	with oEnemy0_Father if target draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
}
else if oLord4.spellCast = 11 //HEAL SONG
{
	with oLord0Parent draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_lime,c_lime,c_lime,c_lime,true);
}
if oLord4.spellCast = 14 //Storm
{
	with oEnemy0_Father if revealed draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
}