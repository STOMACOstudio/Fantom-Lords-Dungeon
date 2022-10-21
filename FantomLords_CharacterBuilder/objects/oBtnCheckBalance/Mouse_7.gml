/// @description 

if (global.user_address!="0") {
	
	oController.state=2;
	oController.alarm[0]=1;
	audio_play_sound(snAddLord,0,false);
	
} else {
	oPrintMessage.thisPrint = "Please connect your wallet";
}

sprite_index = sVFX_Loading;
image_speed = 1;