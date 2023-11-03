randomize();

function camera_setup() {
	view_enabled = true;
}

function create_game_user_interface() {
	;
}
function init() {
	create_game_user_interface();
}
init();

//if(!instance_exists(oManagerGame)) {
//	instance_create_layer(0,0,"BG",oManagerGame);
//}

//if !instance_exists(oManagerGame) instance_create_layer(0,0,"BG",oManagerGame);

//if !global.enterPlaceSewer
//{
//	instance_create_layer(0,0,"VFX",oVFX_SolidBlackFadeoutBIG);
//	instance_create_layer(0,0,"VFX",oVFX_oEnterPlace1_Sewer);
//}
//else instance_create_layer(0,0,"VFX",oVFX_SolidBlackFadeout);

//audio_stop_all();
//audio_play_sound(sn1_Waterways,0,true);