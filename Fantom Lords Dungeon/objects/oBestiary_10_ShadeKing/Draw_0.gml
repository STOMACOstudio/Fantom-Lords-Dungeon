/// @description Insert description here
// You can write your code in this editor

draw_self();

if (global.bestiaryShadeKingDiscovered)
{
	draw_sprite_stretched(sEnemyBoss_ShadeKing,0,x,y,128,128);
	draw_text(x+148,y,"Name: Shade  King");
	draw_text(x+148,y+28,"Category: Boss");
	draw_text(x+148,y+56,"Location: Prison");
	draw_text(x+148,y+84,"Killed: " + string(global.bestiaryShadeKingKilled));
}
else
{
	draw_sprite(sBestiary_locked,0,x+(sprite_width/2),y+(sprite_height/2));
	draw_text(x+148,y,"Name: ???");
	draw_text(x+148,y+28,"Category: ???");
	draw_text(x+148,y+56,"Location: ???");
	draw_text(x+148,y+84,"Killed: 0");
}