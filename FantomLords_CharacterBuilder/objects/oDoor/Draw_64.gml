/// @description Insert description here
// You can write your code in this editor

if global.roomCondition = "PAY WITH GOLD" && !open
{
	if mouse_x > x && mouse_x < x+64 && mouse_y > y && mouse_y < y+64
	{
		draw_sprite(sCollect_Door,image_index,x,y);
		draw_rectangle_color(mouse_x+8,mouse_y-14,mouse_x+36,mouse_y-1,c_black,c_black,c_black,c_black,false);
		draw_text_transformed(mouse_x+9,mouse_y-14,"PAY",0.5,0.5,0);
	}
}