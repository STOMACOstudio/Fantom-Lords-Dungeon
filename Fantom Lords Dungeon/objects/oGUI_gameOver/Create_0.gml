/// @description Insert description here
// You can write your code in this editor

image_alpha = 0;

oGUI_printSelectedStatLord.selectedLord = 0;

audio_stop_all();

audio_play_sound(snGameOver,0,false);
alarm[0] = 30;

global.lastScore = score;
if (score > global.highScore)
{
	global.highScore = score;
}

scrSaveGame();
