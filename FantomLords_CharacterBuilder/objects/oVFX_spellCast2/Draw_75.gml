/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sVFX_spellCast,image_index,x,y,1,1,image_angle,c_white,0.8);

if oLord2.spellCast = 0 //Fire Ball
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
if oLord2.spellCast = 3 //Soul Syphon
{
	with oEnemy0_Father
	{
			 if x = oLord2.x && y = oLord2.y-64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		else if x = oLord2.x+64 && y = oLord2.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		else if x = oLord2.x && y = oLord2.y+64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		else if x = oLord2.x-64 && y = oLord2.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		
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
