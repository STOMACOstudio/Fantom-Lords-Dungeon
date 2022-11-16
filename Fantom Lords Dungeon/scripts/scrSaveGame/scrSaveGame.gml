// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrSaveGame(){
	
	ini_open("datafiles/FantomLordsSav.ini")
	
	#region	save vars
	ini_write_real("Save1","highScore",global.highScore);
	ini_write_real("Save1","lastScore",global.lastScore);
	#endregion
	
	ini_close();

}