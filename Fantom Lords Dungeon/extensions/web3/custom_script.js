// See if Metamask is installed in the browser
const API_ENDPOINT = "http://13.50.241.9/fantom-lords";
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

async function getUserAscendedLords(wallet_address) {
	let minABI = [{
        "inputs": [
            {
                "internalType": "address",
                "name": "owner",
                "type": "address"
            }
        ],
        "name": "balanceOf",
        "outputs": [
            {
                "internalType": "uint256",
                "name": "",
                "type": "uint256"
            }
        ],
        "stateMutability": "view",
        "type": "function"
    },{
        "inputs": [
            {
                "internalType": "address",
                "name": "owner",
                "type": "address"
            },
            {
                "internalType": "uint256",
                "name": "index",
                "type": "uint256"
            }
        ],
        "name": "tokenOfOwnerByIndex",
        "outputs": [
            {
                "internalType": "uint256",
                "name": "",
                "type": "uint256"
            }
        ],
        "stateMutability": "view",
        "type": "function"
    }];
	let contract = new web3.eth.Contract(minABI, "0x6139b9C548FBd1C50d2768f3464D89c8744aB5f2");
	const tokenIDs = [];
	let tokenCount = await contract.methods.balanceOf(wallet_address).call();
	try {
		for (let i = 0; i < tokenCount; i++) {
			const response = await contract.methods.tokenOfOwnerByIndex(wallet_address, i).call();
			tokenIDs.push(response);
		}
	} catch (e) {
		console.log(e);
	}
	return JSON.stringify({ tokenIDs });
	// return tokenIDs;
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
	return JSON.stringify({ tokenIDs });
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
	map["ascendedTokenIDs"] = await getUserAscendedLords(wallet_address);

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

// async function sendHighScore() {
// }

async function sendHighScore(address, highscore) {
    const rawRes = await fetch(`${API_ENDPOINT}/auth/step/1`, {
        method: "POST",
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            address: address
        })
    });

    const response = await rawRes.json();
    console.log("response: ");
    console.log({ response });
    const nonce = response.data.user.nonce;
    console.log({ user: response.data.user });
    console.log({ user: response.data.user.nonce });
    const message = `Sign this message to send your score. Your magical nonce is: ${nonce}`;
    const signature = await ethereum.request({ 
        method: 'personal_sign', 
        params: [ 
            message,
            address
        ]
    });
    console.log("signature");
    console.log({ signature });

    const rawResAuth = await fetch(`${API_ENDPOINT}/auth/step/2`, {
        method: 'POST',
        body: JSON.stringify({ 
            address,
            message,
            signature
        }),
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
    });

    const responseAuth = await rawResAuth.json();
    console.log("responseAuth:");
    console.log({ responseAuth });

    const setHighScoreResponse = await fetch(`${API_ENDPOINT}/dungeon/highscore`, {
        method: 'POST',
        body: JSON.stringify({ 
            address,
			highscore
        }),
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
            'Authorization': 'Bearer: ' + responseAuth.token
        },
    });

	const responseHighScore = await setHighScoreResponse.json();
	console.log({ responseHighScore });
	
    const asyncData = {};
    asyncData["id"] = "highscoreReponse";
    asyncData["success"] = true;
    asyncData["error"] = false;
    // asyncData["message"] = "";
    // asyncData["jwt"] = responseAuth["token"];
    if("error" in responseAuth) {
        asyncData["error"] = true;
        asyncData["message"] = responseAuth["error"];
    }
    GMS_API.send_async_event_social(asyncData);

}
