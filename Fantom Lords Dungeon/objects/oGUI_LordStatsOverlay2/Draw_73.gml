/// @description Insert description here
// You can write your code in this editor

if instance_exists(oLord2)
{
	draw_rectangle_color(mouse_x+16,mouse_y-16,mouse_x+80,mouse_y+82,c_black,c_black,c_black,c_black,false);
	
	draw_text_transformed(mouse_x+18,mouse_y-14,"LVL: " + string(oLord2.thisLord_level),0.5,0.5,0);
	
	draw_text_transformed(mouse_x+18,mouse_y+2,"LIF: " + string(oLord2.thisLord_LIFmax),0.5,0.5,0);
	
	if oLord2.thisLord_ATK > oLord2.thisLord_ATKmax  draw_text_transformed_color(mouse_x+18,mouse_y+18,"ATK: " + string(oLord2.thisLord_ATK),0.5,0.5,0,c_green,c_green,c_green,c_green,1);
	else if oLord2.thisLord_ATK < oLord2.thisLord_ATKmax  draw_text_transformed_color(mouse_x+18,mouse_y+18,"ATK: " + string(oLord2.thisLord_ATK),0.5,0.5,0,c_red,c_red,c_red,c_red,1);
	else draw_text_transformed(mouse_x+18,mouse_y+18,"ATK: " + string(oLord2.thisLord_ATK),0.5,0.5,0);
	
	if oLord2.thisLord_DEF > oLord2.thisLord_DEFmax  draw_text_transformed_color(mouse_x+18,mouse_y+34,"DEF: " + string(oLord2.thisLord_DEF),0.5,0.5,0,c_green,c_green,c_green,c_green,1);
	else if oLord2.thisLord_DEF < oLord2.thisLord_DEFmax  draw_text_transformed_color(mouse_x+18,mouse_y+34,"DEF: " + string(oLord2.thisLord_DEF),0.5,0.5,0,c_red,c_red,c_red,c_red,1);
	else draw_text_transformed(mouse_x+18,mouse_y+34,"DEF: " + string(oLord2.thisLord_DEF),0.5,0.5,0);
	
	if oLord2.thisLord_MAG > oLord2.thisLord_MAGmax  draw_text_transformed_color(mouse_x+18,mouse_y+50,"MAG: " + string(oLord2.thisLord_MAG),0.5,0.5,0,c_green,c_green,c_green,c_green,1);
	else if oLord2.thisLord_MAG < oLord2.thisLord_MAGmax  draw_text_transformed_color(mouse_x+18,mouse_y+50,"MAG: " + string(oLord2.thisLord_MAG),0.5,0.5,0,c_red,c_red,c_red,c_red,1);
	else draw_text_transformed(mouse_x+18,mouse_y+50,"MAG: " + string(oLord2.thisLord_MAG),0.5,0.5,0);
	
	if oLord2.thisLord_ACT > oLord2.thisLord_ACTmax  draw_text_transformed_color(mouse_x+18,mouse_y+66,"ACT: " + string(oLord2.thisLord_ACT),0.5,0.5,0,c_green,c_green,c_green,c_green,1);
	else if oLord2.thisLord_ACT < oLord2.thisLord_ACTmax  draw_text_transformed_color(mouse_x+18,mouse_y+66,"ACT: " + string(oLord2.thisLord_ACT),0.5,0.5,0,c_red,c_red,c_red,c_red,1);
	else draw_text_transformed(mouse_x+18,mouse_y+66,"ACT: " + string(oLord2.thisLord_ACT),0.5,0.5,0);
}