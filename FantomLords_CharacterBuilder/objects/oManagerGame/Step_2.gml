/// @description Insert description here
// You can write your code in this editor

if !oLordStats.lord1active && !oLordStats.lord2active && !oLordStats.lord3active && !oLordStats.lord4active
{
	if !instance_exists(oGUI_gameOver) instance_create_layer(496,272,"Instances",oGUI_gameOver);
}