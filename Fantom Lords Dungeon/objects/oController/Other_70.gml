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
  var parsed_ascended_token_ids = json_parse(async_load[? "ascendedTokenIDs"]);
  
  global.lordTokenData = {};
  global.ascendedLordTokenData = {};
  global.currentLordIndex = 0;
  global.lordTokenIDs = parsed_token_ids.tokenIDs; // array of user's lords (in IDs) [1, 1000, 444]
  global.ascendedLordTokenIDs = parsed_ascended_token_ids.tokenIDs;
  var total_lords_balance = array_length(global.lordTokenIDs) + array_length(global.ascendedLordTokenIDs);
  setLordsData(global.lordTokenIDs);
  setAscendedLordsData(global.ascendedLordTokenIDs);
  if(total_lords_balance == 0) {
    oPrintMessage.thisPrint = "You don't own enough Fantom Lords";
    instance_destroy(oVFX_Loading);
  } else {
    var current_lord_id = global.lordTokenIDs[0];
    var current_lord_data = global.lordTokenData[$ string(current_lord_id)];
    setCurrentLord(current_lord_data);  
    oPrintMessage.thisPrint = "User has "+string(total_lords_balance)+" Fantom Lord/s";
    instance_destroy(oVFX_Loading);
	room_goto_next();
  }
}