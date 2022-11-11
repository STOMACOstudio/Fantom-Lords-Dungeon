/// @description Insert description here
// You can write your code in this editor

image_blend = c_white;

if !global.demo && !oGUI_FantomTitleMain.canStart
{
	instance_create_depth(610,230,0,oVFX_Loading);
	if (global.user_address!="0") {
	
		oController.state=2;
		oController.alarm[0]=1;
	} else {
		oPrintMessage.thisPrint = "Please connect your wallet";
	}
}