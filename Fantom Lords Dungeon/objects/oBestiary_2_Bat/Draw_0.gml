/// @description Insert description here
// You can write your code in this editor

draw_self();

if (global.bestiaryBatDiscovered)
{
	draw_sprite_stretched(sEnemy_Goblin,0,x,y,128,128);
	draw_text(x+148,y,"Name: Bat");
	draw_text(x+148,y+28,"Category: Regular");
	draw_text(x+148,y+56,"Location: Sewer");
	draw_text(x+148,y+84,"Killed: " + string(global.bestiaryBatKilled));
}
else
{
	draw_sprite(sBestiary_locked,0,x+(sprite_width/2),y+(sprite_height/2));
	draw_text(x+148,y,"Name: ???");
	draw_text(x+148,y+28,"Category: ???");
	draw_text(x+148,y+56,"Location: ???");
	draw_text(x+148,y+84,"Killed: 0");
}