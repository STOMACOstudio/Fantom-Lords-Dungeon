/// @description Insert description here
// You can write your code in this editor

if instance_exists(oLord3)
{
	if oLord3.battlecry > 0 draw_sprite(sSTATUS,4,x,y);
	if oLord3.burden > 0 draw_sprite(sSTATUS,5,x+14,y);
	if oLord3.shadow > 0 draw_sprite(sSTATUS,6,x+28,y);
	if oLord3.weaken > 0 draw_sprite(sSTATUS,2,x+42,y);
	if oLord3.stun > 0 draw_sprite(sSTATUS,1,x+56,y);
	if oLord3.tower > 0 draw_sprite(sSTATUS,7,x+70,y);
	if oLord3.matchup > 0 draw_sprite(sSTATUS,8,x+70,y);
	if oLord3.royalBuff > 0 draw_sprite(sSTATUS,9,x+98,y);
	if oLord3.agility > 0 draw_sprite(sSTATUS,10,x+112,y);
	if (oLord3.berserk) draw_sprite(sSTATUS,11,x+126,y);
}