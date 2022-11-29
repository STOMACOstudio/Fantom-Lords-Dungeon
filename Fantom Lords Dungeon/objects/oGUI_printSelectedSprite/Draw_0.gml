/// @description Insert description here
// You can write your code in this editor

if global.currentSelectedSprite != "none"
{
	draw_sprite_stretched(global.currentSelectedSprite,global.currentSelectedImageIndex,x,y,224,224);
	if (global.currentStatusSleep > 0) draw_sprite_stretched(sSTATUS,0,x-8,y+206,24,24);
	if (global.currentStatusStun = true) draw_sprite_stretched(sSTATUS,1,x+20,y+206,24,24);
	if (global.currentStatusWeak > 0) draw_sprite_stretched(sSTATUS,2,x+48,y+206,24,24);
	if (global.currentStatusPoison = true) draw_sprite_stretched(sSTATUS,3,x+76,y+206,24,24);
	if (global.currentStatusMatchup > 0) draw_sprite_stretched(sSTATUS,8,x+104,y+206,24,24);
}