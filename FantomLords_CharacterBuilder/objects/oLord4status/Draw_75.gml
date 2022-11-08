/// @description Insert description here
// You can write your code in this editor

if instance_exists(oLord4)
{
	if oLord4.battlecry > 0 draw_sprite(sSTATUS,4,x,y);
	if oLord4.burden > 0 draw_sprite(sSTATUS,5,x+14,y);
	if oLord4.shadow > 0 draw_sprite(sSTATUS,6,x+28,y);
	if oLord4.weaken > 0 draw_sprite(sSTATUS,2,x+42,y);
	if oLord4.stun > 0 draw_sprite(sSTATUS,1,x+56,y);
}