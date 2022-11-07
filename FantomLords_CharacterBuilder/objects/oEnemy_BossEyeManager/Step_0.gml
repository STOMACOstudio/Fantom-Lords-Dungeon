/// @description Insert description here
// You can write your code in this editor

if instance_number(oEnemy_Eye) <= 0
{
	audio_stop_sound(sn2_BossBattle1Loop);
	audio_play_sound(sn2_BossBattle1Victory,0,false);
	instance_create_layer(514,64,"Instances",oDoor);
	instance_destroy();
}