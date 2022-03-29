/// @description Insert description here
// You can write your code in this editor

/*if global.roomCondition = "PAY WITH GOLD" && !open
{
	audio_play_sound(snDoor,0,false);
	printScore = round(score/2);
	instance_create_layer(oGUI_score.x+112,oGUI_score.y,"Instances",oGUI_printScoreSubtract);
	score = round(score/2);
	open = true;
}