/// @description Insert description here
// You can write your code in this editor

if instance_exists(oLord1)
{
	draw_rectangle_color(mouse_x+16,mouse_y,mouse_x+80,mouse_y+66,c_black,c_black,c_black,c_black,false);
	draw_text_transformed(mouse_x+18,mouse_y+2,"ATK: " + string(oLord1.thisLord_ATK),0.5,0.5,0);
	draw_text_transformed(mouse_x+18,mouse_y+18,"DEF: " + string(oLord1.thisLord_DEF),0.5,0.5,0);
	draw_text_transformed(mouse_x+18,mouse_y+34,"MAG: " + string(oLord1.thisLord_MAG),0.5,0.5,0);
	draw_text_transformed(mouse_x+18,mouse_y+50,"ACT: " + string(oLord1.thisLord_ACT),0.5,0.5,0);
}