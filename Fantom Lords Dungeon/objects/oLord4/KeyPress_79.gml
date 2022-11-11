/// @description Insert description here
// You can write your code in this editor

if global.hasControl
{
	if thisLocked && global.potionACT > 0
	{
		thisLord_ACTpoints = thisLord_ACTpointsMAX;
		audio_play_sound(snCollectPotion,0,false);
		instance_create_layer(oGUI_LordFrame4.x,oGUI_LordFrame4.y,"Instances",oVFX_powerUpACT);
		global.potionACT --;
	}
}
