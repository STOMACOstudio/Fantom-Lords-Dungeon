persistent = true;

function init() {
	global.highScore = 0;
	global.lastScore = 0;
	global.bestiary = {}; // TODO: switch bestiary to this
	
	global.ascendedLordTokenIDs = [];
	
	// Initialize variables
	global.print_message="";
	global.user_address="0";

	// NOTE: added from deleted oManagerOptions
	global.volumeOST = 1;
	global.volumeSFX = 1;
	
	setup_bestiary();
	read_savefile();
}

function read_savefile() {
	ini_open("datafiles/FantomLordsSav.ini")
	
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

	ini_close();	
}

function setup_bestiary() {
	global.bestiaryFlanDiscovered = false;
	global.bestiaryFlanKilled = 0;
	global.bestiaryBatDiscovered = false;
	global.bestiaryBatKilled = 0;
	global.bestiaryMimicDiscovered = false;
	global.bestiaryMimicKilled = 0;
	global.bestiaryFlanBossDiscovered = false;
	global.bestiaryFlanBossKilled = 0;
	global.bestiaryBatBossDiscovered = false;
	global.bestiaryBatBossKilled = 0;
	global.bestiaryBloodBatDiscovered = false;
	global.bestiaryBloodBatKilled = 0;
	global.bestiaryShadeDiscovered = false;
	global.bestiaryShadeKilled = 0;
	global.bestiarySkeletonDiscovered = false;
	global.bestiarySkeletonKilled = 0;
	global.bestiaryShadeKingDiscovered = false;
	global.bestiaryShadeKingKilled = 0;
	global.bestiarySkeletonKingDiscovered = false;
	global.bestiarySkeletonKingKilled = 0;
}

function on_key_pressed_any() {
	if(keyboard_check_pressed(vk_tab)) {
		if(os_browser != browser_not_a_browser) { return; }
		if(room == room_testing_grounds) { return; }
		room_goto(room_testing_grounds);
	}
}

init();