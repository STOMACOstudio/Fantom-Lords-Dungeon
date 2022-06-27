// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrLordAttackRange(){
	
	if global.showRange && thisLocked
	{
		if thisLord_typeAttack = "MELEE"
		{
			draw_circle_color(x+32,y-32,32,c_red,c_red,true);
			draw_circle_color(x+96,y+32,32,c_red,c_red,true);
			draw_circle_color(x+32,y+96,32,c_red,c_red,true);
			draw_circle_color(x-32,y+32,32,c_red,c_red,true);
		}
		else if thisLord_typeAttack = "MAGIC"
		{
			draw_circle_color(x+32,y-32,32,c_red,c_red,true);
			draw_circle_color(x+96,y+32,32,c_red,c_red,true);
			draw_circle_color(x+32,y+96,32,c_red,c_red,true);
			draw_circle_color(x-32,y+32,32,c_red,c_red,true);
			draw_circle_color(x-32,y-32,32,c_red,c_red,true);
			draw_circle_color(x+96,y-32,32,c_red,c_red,true);
			draw_circle_color(x+96,y+96,32,c_red,c_red,true);
			draw_circle_color(x-32,y+96,32,c_red,c_red,true);
		}
			else if thisLord_typeAttack = "RANGED"
		{
			draw_circle_color(x+32,y-96,32,c_red,c_red,true);
			draw_circle_color(x+160,y+32,32,c_red,c_red,true);
			draw_circle_color(x+32,y+160,32,c_red,c_red,true);
			draw_circle_color(x-96,y+32,32,c_red,c_red,true);
			draw_circle_color(x-32,y-32,32,c_red,c_red,true);
			draw_circle_color(x+96,y-32,32,c_red,c_red,true);
			draw_circle_color(x+96,y+96,32,c_red,c_red,true);
			draw_circle_color(x-32,y+96,32,c_red,c_red,true);
		}
	}
}