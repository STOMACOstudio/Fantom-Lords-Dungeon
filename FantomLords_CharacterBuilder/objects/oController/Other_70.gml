/// @description 

var my_id = async_load[? "id"];

if (my_id=="getWalletAddress") {
	global.user_address = async_load[? "address"];
	
	if (global.user_address=="0") {
		oPrintMessage.thisPrint = "Denied access to wallet";
	} else {
		//oPrintMessage.thisPrint = "Got user address as "+string(global.user_address);
		state=2;
		oPrintPlayerWallet.playerWalletAddress = string(global.user_address);
		oBtnConnectWallet.image_index=1;
	}
}


if (my_id=="getTokenBalance") {
	var bal = async_load[? "balance"];
	global.lordTokenIDs = async_load[? "tokenIDs"];
	var arrayLength = array_length(global.lordTokenIDs);
	show_debug_message("debug array: " + string(arrayLength));
	show_debug_message("debug lord ids: " + string(global.lordTokenIDs));

	if (bal==-1) {
		oPrintMessage.thisPrint = "Failed to get the balance";
	} else {
		oPrintMessage.thisPrint = "User has "+string(bal)+" XRLC";
		if bal >= 50 && arrayLength > 0 oGUI_FantomTitleMain.canStart = true;
		else if bal < 50 oPrintMessage.thisPrint = "You need at least 50 XRLC to play";
		else if arrayLength < 1 oPrintMessage.thisPrint = "You need at least 1 Fantom Lord to play";
	}
}