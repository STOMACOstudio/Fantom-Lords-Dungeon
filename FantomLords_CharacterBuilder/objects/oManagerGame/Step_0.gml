/// @description Insert description here
// You can write your code in this editor

if !oLordStats.lord1active && !oLordStats.lord2active && !oLordStats.lord3active && !oLordStats.lord4active && !global.gameOver
{
	global.gameOver = true;
	audio_play_sound(snGameOver,0,false);
	if !instance_exists(oGUI_gameOver) instance_create_layer(512,256,"VFX",oGUI_gameOver);
	if !instance_exists(oVFX_solidBlack) instance_create_layer(0,0,"VFX",oVFX_solidBlack);
}

if global.revealdEnemies <= 0 global.combatActive = false;
