/// @description Insert description here
// You can write your code in this editor

draw_rectangle_color(mouse_x-66,mouse_y-18,mouse_x,mouse_y,c_black,c_black,c_black,c_black,false);

if !global.fightMode draw_text_transformed(mouse_x-64,mouse_y-16,"EXPLORE",0.5,0.5,0);
else
{
	if oManagerCombat.combatPhase = 0 draw_text_transformed(mouse_x-64,mouse_y-16,"ATTACK",0.5,0.5,0);
	else draw_text_transformed(mouse_x-64,mouse_y-16,"DEFEND",0.5,0.5,0)
}
