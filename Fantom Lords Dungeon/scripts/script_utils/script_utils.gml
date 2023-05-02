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
	var rawFileContents = getFileContents("./fantomLords.json")
	var fantomLords = json_decode(rawFileContents);
	var fantomLordsStr = json_encode(fantomLords);
	show_debug_message("_id:" + string(_id));
	var fantomLord = fantomLords[? _id];
	return fantomLord;
}


function getAscendedLordData(_id) {
  var rawFileContents = getFileContents("./fantomLordsAscended.json");
  show_debug_message("rawFileContents: " + rawFileContents);
  var fantomLords = json_decode(rawFileContents);
  show_debug_message("fantomLords: " + json_stringify(rawFileContents));
  var fantomLordsStr = json_encode(fantomLords);
  show_debug_message("_id:" + string(_id));
  var fantomLord = fantomLords[? _id];
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

function setAscendedLordsData(lordIDs) {
  for(var i = 0; i < array_length(lordIDs); i++) {
    show_debug_message("ascended lord n" +string(i));
    var lordID = lordIDs[i];
    var lordData = getAscendedLordData(string(lordID));
	show_debug_message("ascendedLord n" + string(lordID)+ " json "+ json_stringify(lordData));
    global.ascendedLordTokenData[$ string(lordID)] = {
      "lordName":    lordID,
      "weapon":    lordData[? "weapon"],
      "background":  lordData[? "background"],
      "ancestry":    lordData[? "ancestry"],
      "classArmor":  lordData[? "armor"],
      "headgear":    lordData[? "headgear"],
      "relic":    lordData[? "relic"]
    }
  }
}

function setCurrentLord(_lordData) {
	var lordData = json_parse(json_stringify(_lordData));
	show_debug_message("start");
	show_debug_message(json_stringify(_lordData));
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