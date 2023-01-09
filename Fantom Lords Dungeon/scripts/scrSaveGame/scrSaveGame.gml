// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrSaveGame(){
	
	ini_open("datafiles/FantomLordsSav.ini")
	
	#region	save vars
	ini_write_real("Save1","highScore",global.highScore);
	ini_write_real("Save1","lastScore",global.lastScore);
	ini_write_real("Save1","bestiaryFlanDiscovered",global.bestiaryFlanDiscovered);
	ini_write_real("Save1","bestiaryFlanKilled",global.bestiaryFlanKilled);
	ini_write_real("Save1","bestiaryBatDiscovered",global.bestiaryBatDiscovered);
	ini_write_real("Save1","bestiaryBatKilled",global.bestiaryBatKilled);
	#endregion
	
	ini_close();

}