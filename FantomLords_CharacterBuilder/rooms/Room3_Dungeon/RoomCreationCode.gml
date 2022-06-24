randomize();

if !instance_exists(oManagerGame) instance_create_layer(0,0,"BG",oManagerGame);

if !global.enterPlaceSewer
{
	instance_create_layer(0,0,"VFX",oVFX_SolidBlackFadeoutBIG);
	instance_create_layer(0,0,"VFX",oVFX_oEnterPlace1_Sewer);
}
else instance_create_layer(0,0,"VFX",oVFX_SolidBlackFadeout);

audio_stop_all();
audio_play_sound(sn1_StrongholdLoop,0,true);