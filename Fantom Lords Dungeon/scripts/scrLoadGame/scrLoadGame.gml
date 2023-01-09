// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrLoadGame(){
	
	ini_open("datafiles/FantomLordsSav.ini")
	
	#region var load
	global.highScore = ini_read_real("Save1","highScore",0);
	global.lastScore = ini_read_real("Save1","lastScore",0);
	global.bestiaryFlanDiscovered =	ini_read_real("Save1","bestiaryFlanDiscovered",0);
	global.bestiaryFlanKilled = ini_read_real("Save1","bestiaryFlanKilled",0);
	global.bestiaryBatDiscovered =	ini_read_real("Save1","bestiaryBatDiscovered",0);
	global.bestiaryBatKilled = ini_read_real("Save1","bestiaryBatKilled",0);
	#endregion

	ini_close();	
}