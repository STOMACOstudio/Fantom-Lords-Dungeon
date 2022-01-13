/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord3active
{
	draw_text_transformed(x,y,"ATK: " + string(oLord3.thisLord_ATK),0.5,0.5,0);
	draw_text_transformed(x,y+16,"DEF: " + string(oLord3.thisLord_DEF),0.5,0.5,0);
	draw_text_transformed(x,y+32,"MAG: " + string(oLord3.thisLord_MAG),0.5,0.5,0);
	draw_text_transformed(x,y+48,"ACT: " + string(oLord3.thisLord_ACT),0.5,0.5,0);
}