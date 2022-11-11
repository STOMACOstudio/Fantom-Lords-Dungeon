// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrEnemyWalkRight(){
	
	audio_play_sound(snWalk,0,false);
	x += global.tileRate;
	if collision_point(x,y,oMap_0parent,false,true).revealed instance_create_layer(x+32,y+32,"VFX",oVFX_arrowRight);
	alarm[0] = alarmCounter;
	isFighting = false;

}