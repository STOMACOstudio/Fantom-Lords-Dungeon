/// @description Insert description here
// You can write your code in this editor

if instance_exists(oLord1)
{
	if oLord1.battlecry > 0 draw_sprite(sSTATUS,4,x,y);
	if oLord1.burden > 0 draw_sprite(sSTATUS,5,x+14,y);
	if oLord1.shadow > 0 draw_sprite(sSTATUS,6,x+28,y);
	if oLord1.weaken > 0 draw_sprite(sSTATUS,2,x+42,y);
	if oLord1.stun > 0 draw_sprite(sSTATUS,1,x+56,y);
	if oLord1.tower > 0 draw_sprite(sSTATUS,7,x+70,y);
}