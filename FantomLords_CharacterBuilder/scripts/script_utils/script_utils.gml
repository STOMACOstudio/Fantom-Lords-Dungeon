// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function getFileContents(filename) {
	var file = file_text_open_read(filename);
	var rawData = "";
	while(!file_text_eof(file)) {
		rawData += file_text_read_string(file);
		file_text_readln(file);
	}
	file_text_close(file);
	return rawData;
}

function getLordData(_id) {
	//show_debug_message("-> getLordData");
	var rawFileContents = getFileContents("./fantomLords.json")
	var fantomLords = json_decode(rawFileContents);
	var fantomLordsStr = json_encode(fantomLords);
	show_debug_message("_id:" + string(_id));
	//show_debug_message("fantomLordsStr" + fantomLordsStr);
	//show_debug_message("fantomLords [] :" + string(fantomLords[_id]));
	//show_debug_message("fantomLords ? :" + string(fantomLords[? _id]));
	var fantomLord = fantomLords[? _id];
	//show_debug_message("fantomLord: " + string(fantomLord));
	//var fantomLordClass = fantomLord[? "class"];
	//show_debug_message("fantomLordClass: " + string(fantomLordClass));
	////show_debug_message("fantomLords $ :" + string(fantomLords[$ _id]));
	return fantomLord;
}

function setLordsData(lordIDs) {
	for(var i = 0; i < array_length(lordIDs); i++) {
		show_debug_message("at lord n" +string(i));
		var lordID = lordIDs[i];
		var lordData = getLordData(string(lordID));
		global.lordTokenData[$ string(lordID)] = {
			"lordName":		lordID,
			"weapon":		lordData[? "weapon"],
			"background":	lordData[? "background"],
			"ancestry":		lordData[? "ancestry"],
			"classArmor":	lordData[? "armor"],
			"headgear":		lordData[? "headgear"],
			"relic":		lordData[? "relic"]
		}
	}
}

function setCurrentLord(_lordData) {
	var lordData = json_parse(json_stringify(_lordData));
	show_debug_message("start");
	global.lordName =	lordData.lordName;
	global.weapon =		lordData.weapon;
	global.background = lordData.background;
	global.ancestry =	lordData.ancestry;
	global.classArmor = lordData.classArmor;
	global.headgear =	lordData.headgear;
	global.relic =		lordData.relic;

	show_debug_message(string(global.lordName))
	show_debug_message(string(global.weapon))
	show_debug_message(string(global.background))
	show_debug_message(string(global.ancestry))
	show_debug_message(string(global.classArmor))
	show_debug_message(string(global.headgear))
	show_debug_message(string(global.relic))

	show_debug_message("done");
}