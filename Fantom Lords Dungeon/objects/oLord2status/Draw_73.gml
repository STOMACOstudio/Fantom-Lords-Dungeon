/// @description Insert description here
// You can write your code in this editor

if instance_exists(oLord2)
{
	if oLord2.battlecry > 0 draw_sprite(sSTATUS,4,x,y);
	if oLord2.burden > 0 draw_sprite(sSTATUS,5,x+14,y);
	if oLord2.shadow > 0 draw_sprite(sSTATUS,6,x+28,y);
	if oLord2.weaken > 0 draw_sprite(sSTATUS,2,x+42,y);
	if oLord2.stun > 0 draw_sprite(sSTATUS,1,x+56,y);
}