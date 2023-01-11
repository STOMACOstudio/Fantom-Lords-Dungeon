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
	ini_write_real("Save1","bestiaryMimicDiscovered",global.bestiaryMimicDiscovered);
	ini_write_real("Save1","bestiaryMimicKilled",global.bestiaryMimicKilled);
	ini_write_real("Save1","bestiaryRoyalFlanDiscovered",global.bestiaryRoyalFlanDiscovered);
	ini_write_real("Save1","bestiaryRoyalFlanKilled",global.bestiaryRoyalFlanKilled);
	ini_write_real("Save1","bestiaryBatKingDiscovered",global.bestiaryBatKingDiscovered);
	ini_write_real("Save1","bestiaryBatKingKilled",global.bestiaryBatKingKilled);
	ini_write_real("Save1","bestiaryBloodBatDiscovered",global.bestiaryBloodBatDiscovered);
	ini_write_real("Save1","bestiaryBloodBatKilled",global.bestiaryBloodBatKilled);
	ini_write_real("Save1","bestiarySkeletonDiscovered",global.bestiarySkeletonDiscovered);
	ini_write_real("Save1","bestiarySkeletonKilled",global.bestiarySkeletonKilled);
	ini_write_real("Save1","bestiaryShadeDiscovered",global.bestiaryShadeDiscovered);
	ini_write_real("Save1","bestiaryShadeKilled",global.bestiaryShadeKilled);
	#endregion
	
	ini_close();

}