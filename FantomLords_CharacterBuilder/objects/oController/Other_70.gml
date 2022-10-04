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
	var parsed_token_ids = json_parse(async_load[? "tokenIDs"]);
	
	global.lordTokenData = {};
	global.currentLordIndex = 0;
	global.lordTokenIDs = parsed_token_ids.tokenIDs; // array of user's lords (in IDs) [1, 1000, 444]
	//show_debug_message("global.lordTokenIDs: " + string(global.lordTokenIDs));
	setLordsData(global.lordTokenIDs);
	//show_debug_message("json_stringify(global.lordTokenData):");
	//show_debug_message(json_stringify(global.lordTokenData));
	
	var current_lord_id = global.lordTokenIDs[0];
	var current_lord_data = global.lordTokenData[$ string(current_lord_id)];
	setCurrentLord(current_lord_data);	
	
	//global.lordTokenData = {
	//	"1": {/* json data */},
	//	"1000": {/* json data */},
	//	"444": {/* json data */},
	//}
	
	// gets a specific lord data:
	// getLordData(lord token id as a string);

	var arrayLength = array_length(global.lordTokenIDs);
	if ( arrayLength==0) {
		oPrintMessage.thisPrint = "You don't own enough Fantom Lords";
	} else {
		oPrintMessage.thisPrint = "User has "+string(arrayLength)+" Fantom Lord/s";
		oGUI_FantomTitleMain.canStart = true;
	}
}