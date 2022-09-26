// See if Metamask is installed in the browser
web3 = "";

function checkMetaConnection() {
	if (typeof window.ethereum !== 'undefined') {
		return 1;
	} else {
		return 0;
	}
}

// Ask user to connect wallet to site and get address
async function getMetamaskAccount() {
	var map = {};
	map["id"] = "getWalletAddress";
	map["address"]="0";

	try {
	  const accounts = await ethereum.request({ method: 'eth_requestAccounts' });
		map["address"] = accounts[0];
		web3 = new Web3(window.ethereum);
		console.log(web3);
		console.log(map["address"]);

	} catch(error) {
		console.log("User rejected request");
	}
	GMS_API.send_async_event_social(map);
}


async function getUserFantomLords(wallet_address) {
	// contract address: 0xfee8077c909d956E9036c2d2999723931CeFE548
	let minABI = [{
  		"inputs": [{
  			"internalType":"address",
  			"name":"_owner",
  			"type":"address"
  		}],
		"name":"walletOfOwner",
		"outputs":[{
			"internalType":"uint256[]",
			"name":"",
			"type":"uint256[]"
		}],
		"stateMutability":"view",
		"type":"function"
	}];

	let contract = new web3.eth.Contract(minABI, "0xfee8077c909d956E9036c2d2999723931CeFE548");

	let tokenIDs = [];
	try {
		tokenIDs = await contract.methods.walletOfOwner(wallet_address).call();
	} catch(e) {
		console.error(e);
	}
	return tokenIDs;
}


async function getTokenBalance(wallet_address, token_address) {

	// Default structure of ERC20 smart contract
	let minABI = [{
	    "inputs": [{
    		"name": "_owner",
    		"type":"address"
    	}],
	    "name":"balanceOf",
	    "outputs":[{
	    	"name":"balance",
	    	"type":"uint256"
	    }],
	    "type":"function"
	}];

	var map = {};
	map["id"] = "getTokenBalance";
	map["balance"]="-1";
	map["tokenIDs"] = await getUserFantomLords(wallet_address);

	let contract = new web3.eth.Contract(minABI, token_address);
	console.log(contract);

	try {

		let balance = await contract.methods.balanceOf(wallet_address).call();
		//const decimalPlaces = await contract.methods.decimals().call(); // 8
		//let newBalance = 0;
		const newBalance = (balance / 1e18).toFixed(3);

		/*if (decimalPlaces) {
			newBalance = balance / (10 ** decimalPlaces);
		}*/

		console.log(balance);
		//console.log(decimalPlaces);
		//console.log(newBalance);

		map["balance"] = newBalance;

	} catch(error) {
		console.log(error);
	}
	
	console.log({ map });
	
	GMS_API.send_async_event_social(map);
}
















//
