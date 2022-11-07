/// @description Insert description here
// You can write your code in this editor

if instance_exists(oLord4)
{
	draw_rectangle_color(mouse_x+16,mouse_y,mouse_x+80,mouse_y+82,c_black,c_black,c_black,c_black,false);
	
	draw_text_transformed(mouse_x+18,mouse_y+2,"LIF: " + string(oLord4.thisLord_LIFmax),0.5,0.5,0);
	
	if oLord4.thisLord_ATK > oLord4.thisLord_ATKmax  draw_text_transformed_color(mouse_x+18,mouse_y+18,"ATK: " + string(oLord4.thisLord_ATK),0.5,0.5,0,c_green,c_green,c_green,c_green,1);
	else if oLord4.thisLord_ATK < oLord4.thisLord_ATKmax  draw_text_transformed_color(mouse_x+18,mouse_y+18,"ATK: " + string(oLord4.thisLord_ATK),0.5,0.5,0,c_red,c_red,c_red,c_red,1);
	else draw_text_transformed(mouse_x+18,mouse_y+18,"ATK: " + string(oLord4.thisLord_ATK),0.5,0.5,0);
	
	if oLord4.thisLord_DEF > oLord4.thisLord_DEFmax  draw_text_transformed_color(mouse_x+18,mouse_y+34,"DEF: " + string(oLord4.thisLord_DEF),0.5,0.5,0,c_green,c_green,c_green,c_green,1);
	else if oLord4.thisLord_DEF < oLord4.thisLord_DEFmax  draw_text_transformed_color(mouse_x+18,mouse_y+34,"DEF: " + string(oLord4.thisLord_DEF),0.5,0.5,0,c_red,c_red,c_red,c_red,1);
	else draw_text_transformed(mouse_x+18,mouse_y+34,"DEF: " + string(oLord4.thisLord_DEF),0.5,0.5,0);
	
	if oLord4.thisLord_MAG > oLord4.thisLord_MAGmax  draw_text_transformed_color(mouse_x+18,mouse_y+50,"MAG: " + string(oLord4.thisLord_MAG),0.5,0.5,0,c_green,c_green,c_green,c_green,1);
	else if oLord4.thisLord_MAG < oLord4.thisLord_MAGmax  draw_text_transformed_color(mouse_x+18,mouse_y+50,"MAG: " + string(oLord4.thisLord_MAG),0.5,0.5,0,c_red,c_red,c_red,c_red,1);
	else draw_text_transformed(mouse_x+18,mouse_y+50,"MAG: " + string(oLord4.thisLord_MAG),0.5,0.5,0);
	
	draw_text_transformed(mouse_x+18,mouse_y+66,"ACT: " + string(oLord4.thisLord_ACT),0.5,0.5,0);
}