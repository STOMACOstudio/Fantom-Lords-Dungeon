if !instance_exists(oManagerGame) instance_create_layer(0,0,"BG",oManagerGame);
instance_create_layer(0,0,"VFX",oVFX_SolidBlackFadeout);

audio_stop_all();
audio_play_sound(sn2_BossBattle1Loop,0,true);

oManagerCombat.combatPhase = 1;