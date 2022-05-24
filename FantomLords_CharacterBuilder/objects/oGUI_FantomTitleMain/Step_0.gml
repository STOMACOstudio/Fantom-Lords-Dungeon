/// @description Insert description here
// You can write your code in this editor

if canStart
{
	image_speed = 1;
	
	if fading image_alpha -= 0.05;

	if image_alpha <= 0 room_goto_next();
}
	
else print("You need to check for XRLC token (connect button)");
