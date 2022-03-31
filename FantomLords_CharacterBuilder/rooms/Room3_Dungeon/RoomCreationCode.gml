randomize();

if !instance_exists(oManagerGame) instance_create_layer(0,0,"BG",oManagerGame);
instance_create_layer(x,y,"VFX",oVFX_SolidBlackFadeout);

audio_stop_all();
audio_play_sound(sn1_StrongholdLoop,0,true);