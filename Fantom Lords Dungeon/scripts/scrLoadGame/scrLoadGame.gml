// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrLoadGame(){
	
	ini_open("datafiles/FantomLordsSav.ini")
	
	#region var load
	global.highScore = ini_read_real("Save1","highScore",0);
	global.lastScore = ini_read_real("Save1","lastScore",0);
	global.bestiaryFlanDiscovered =	ini_read_real("Save1","bestiaryFlanDiscovered",0);
	global.bestiaryFlanKilled = ini_read_real("Save1","bestiaryFlanKilled",0);
	global.bestiaryBatDiscovered = ini_read_real("Save1","bestiaryBatDiscovered",0);
	global.bestiaryBatKilled = ini_read_real("Save1","bestiaryBatKilled",0);
	global.bestiaryMimicDiscovered = ini_read_real("Save1","bestiaryMimicDiscovered",0);
	global.bestiaryMimicKilled = ini_read_real("Save1","bestiaryMimicKilled",0);
	global.bestiaryRoyalFlanDiscovered = ini_read_real("Save1","bestiaryMimicDiscovered",0);
	global.bestiaryRoyalFlanKilled = ini_read_real("Save1","bestiaryRoyalFlanKilled",0);
	global.bestiaryBatKingDiscovered = ini_read_real("Save1","bestiaryBatKingDiscovered",0);
	global.bestiaryBatKingKilled = ini_read_real("Save1","bestiaryBatKingKilled",0);
	global.bestiaryBloodBatDiscovered = ini_read_real("Save1","bestiaryBloodBatDiscovered",0);
	global.bestiaryBloodBatKilled = ini_read_real("Save1","bestiaryBloodBatKilled",0);
	global.bestiarySkeletonDiscovered =	ini_read_real("Save1","bestiarySkeletonDiscovered",0);
	global.bestiarySkeletonKilled = ini_read_real("Save1","bestiarySkeletonKilled",0);
	global.bestiaryShadeDiscovered =	ini_read_real("Save1","bestiaryShadeDiscovered",0);
	global.bestiaryShadeKilled = ini_read_real("Save1","bestiaryShadeKilled",0);
	#endregion

	ini_close();	
}