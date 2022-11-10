/// @description Insert description here
// You can write your code in this editor

skillLength /= 2;

draw_rectangle_color(mouse_x-(skillLength/2),mouse_y,mouse_x+(skillLength/2)+2,mouse_y-16,c_black,c_black,c_black,c_black,false);
draw_text_transformed((mouse_x-(skillLength/2))+2,mouse_y-15,string(global.printSkill),0.5,0.5,0);