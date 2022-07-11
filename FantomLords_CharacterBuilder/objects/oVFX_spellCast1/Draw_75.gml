/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sVFX_spellCast,image_index,x,y,1,1,image_angle,c_white,0.8);

if oLord1.spellCast = 0 //Fire Ball
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
if oLord1.spellCast = 3 //Soul Syphon
{
	with oEnemy0_Father
	{
			 if x = oLord1.x && y = oLord1.y-64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		else if x = oLord1.x+64 && y = oLord1.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		else if x = oLord1.x && y = oLord1.y+64 draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		else if x = oLord1.x-64 && y = oLord1.y draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
		
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
	draw_rectangle_color(oLord1.x-63,oLord1.y+1,oLord1.x-1,oLord1.y+63,c_yellow,c_yellow,c_yellow,c_yellow,true);
	draw_rectangle_color(oLord1.x+1,oLord1.y-63,oLord1.x+64,oLord1.y-1,c_yellow,c_yellow,c_yellow,c_yellow,true)
	draw_rectangle_color(oLord1.x+127,oLord1.y+1,oLord1.x+65,oLord1.y+63,c_yellow,c_yellow,c_yellow,c_yellow,true);
	draw_rectangle_color(oLord1.x+1,oLord1.y+65,oLord1.x+64,oLord1.y+127,c_yellow,c_yellow,c_yellow,c_yellow,true);
}
else if oLord1.spellCast = 9 ^^ oLord1.spellCast = 13//BASH //DRAINSLASH
{
	with oEnemy0_Father if target draw_rectangle_color(x+1,y+1,x+sprite_width-1,y+sprite_height-1,c_yellow,c_yellow,c_yellow,c_yellow,true);
}