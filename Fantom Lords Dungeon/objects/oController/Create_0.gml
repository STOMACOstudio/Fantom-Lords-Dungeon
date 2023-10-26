// Initialize app

//	TODO: cleanup, organize global variables

// NOTE: this was scr_ini()

// Initialize variables
global.print_message="";
global.user_address="0";

// NOTE: added from deleted oManagerOptions
global.volumeOST = 1;
global.volumeSFX = 1;

// draw_set_font(foAlagard24); // removed this, this does not go in a create event, and should have no effect

oPrintMessage.thisPrint = "Press Connect Wallet to start. Press R to restart.";

browser_has_metamask = 0;
state = 0;
// bnb_balance=-1; // unused variable
alarm[0] = 1; 
coin_address_to_check = "";
balance_input = -1;


function alarm_0() {
	switch (state) {
		// See if Metamask is connected to browser - this calls a function in the included JS file
		case 0:
			browser_has_metamask = checkMetaConnection();
			if (browser_has_metamask) {
				oPrintMessage.thisPrint = "MetaMask is installed in the browser, checking if user has already connected wallet";
				state=1;
				alarm[0]=1;
			} else {
				oPrintMessage.thisPrint = "You need to install the MetaMask extension";
			}
			break;
		// Connect wallet
		case 1:
			if global.user_address = "" oPrintMessage.thisPrint = "Waiting for users wallet address";
			else oPrintMessage.thisPrint = "Users wallet address detected";
			getMetamaskAccount();
			break;
		// Ask user for coin to check
		case 2:
			if (global.user_address!="0") {
				//balance_input = get_string_async("Please enter the token address you want to check in the wallet (Default is SAT)","0x1e446cbea52badeb614fbe4ab7610f737995fb44");	
				oPrintMessage.thisPrint = "Checking users wallet for token: Fantom Lord";
				getTokenBalance(global.user_address, "0xE5586582E1a60E302a53e73E4FaDccAF868b459a");
			}
			break;
		// Check users coin
		case 3:
			oPrintMessage.thisPrint = "Checking users wallet for token: "+string(coin_address_to_check);
			getTokenBalance(global.user_address, coin_address_to_check);
			break;
			// Send transaction
		case 4:
			oPrintMessage.thisPrint = "Yet to create this function!";
			break;
		default: 
			break;
	}
}

function async_dialog(_async_load) {
	var input_id = ds_map_find_value(_async_load, "id");
	switch (input_id) {
	
		case balance_input:
			if ds_map_find_value(_async_load, "status") {
				if (ds_map_find_value(_async_load, "result") != "") {
					coin_address_to_check = ds_map_find_value(_async_load, "result");
					state=3;
					alarm[0]=1;
				} else {
					oPrintMessage.print = "Please use a proper address";
					state=-1;
				}
			}
			break;
	}
}

function async_social(_async_load) {
	var my_id = _async_load[? "id"];

	if (my_id=="getWalletAddress") {
		global.user_address = _async_load[? "address"];
	
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
		var bal = _async_load[? "balance"];
		var parsed_token_ids = json_parse(_async_load[? "tokenIDs"]);
		var parsed_ascended_token_ids = json_parse(_async_load[? "ascendedTokenIDs"]);
  
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
			return;
		}
	
		var hasBaseLords = array_length(global.lordTokenIDs) > 0;
	
		if(hasBaseLords) {
			var current_lord_id = global.lordTokenIDs[0];
			var current_lord_data = global.lordTokenData[$ string(current_lord_id)];
			setCurrentLord(current_lord_data);  		
		} else {
			var current_lord_id = global.ascendedLordTokenIDs[0];
			show_debug_message("current_lord_id: " + string(current_lord_id));
			var current_lord_data = global.ascendedLordTokenData[$ string(current_lord_id)];
			show_debug_message("current_lord_data: " + string(current_lord_data));
			setCurrentLord(current_lord_data);
			show_debug_message("done setting ascended lord data...");
		}
		oPrintMessage.thisPrint = "User has "+string(total_lords_balance)+" Fantom Lord/s";
		instance_destroy(oVFX_Loading);
		room_goto_next();
	}
}