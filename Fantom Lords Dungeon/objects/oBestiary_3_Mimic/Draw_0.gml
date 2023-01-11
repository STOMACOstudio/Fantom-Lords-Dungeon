/// @description Insert description here
// You can write your code in this editor

draw_self();

if (global.bestiaryMimicDiscovered)
{
	draw_sprite_stretched(sEnemy_MimicBronze,2,x,y,128,128);
	draw_text(x+148,y,"Name: Mimic");
	draw_text(x+148,y+28,"Category: Secret");
	draw_text(x+148,y+56,"Location: Everywhere");
	draw_text(x+148,y+84,"Killed: " + string(global.bestiaryMimicKilled));
}
else
{
	draw_sprite(sBestiary_locked,0,x+(sprite_width/2),y+(sprite_height/2));
	draw_text(x+148,y,"Name: ???");
	draw_text(x+148,y+28,"Category: ???");
	draw_text(x+148,y+56,"Location: ???");
	draw_text(x+148,y+84,"Killed: 0");
}