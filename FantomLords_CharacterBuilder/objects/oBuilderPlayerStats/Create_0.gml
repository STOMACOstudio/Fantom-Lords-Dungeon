/// @description Insert description here
// You can write your code in this editor

draw_set_font(foAlagard24);

#region STATS

	#region MODS
	//STATS result always = 60, even with Class mods
	global.LIFstart = 12;
	global.ATKstart = 12;
	global.DEFstart = 12;
	global.MAGstart = 12;
	global.ACTstart = 12;

	global.LIF = 12;
	global.ATK = 12;
	global.DEF = 12;
	global.MAG = 12;
	global.ACT = 12;


	global.modLIFancestry = 0;
	global.modATKancestry = 0;
	global.modDEFancestry = 0;
	global.modMAGancestry = 0;
	global.modACTancestry = 0;

	global.modLIFarmor = 0;
	global.modATKarmor = 0;
	global.modDEFarmor = 0;
	global.modMAGarmor = 0;
	global.modACTarmor = 0;
	
	global.modLIFweapon = 0;
	global.modATKweapon = 0;
	global.modDEFweapon = 0;
	global.modMAGweapon = 0;
	global.modACTweapon = 0;
	
	global.modLIFheadgear = 0;
	global.modATKheadgear = 0;
	global.modDEFheadgear = 0;
	global.modMAGheadgear = 0;
	global.modACTheadgear = 0;
	
	global.modLIFrelic = 0;
	global.modATKrelic = 0;
	global.modDEFrelic = 0;
	global.modMAGrelic = 0;
	global.modACTrelic = 0;

	global.TOT = global.LIF + global.ATK + global.DEF + global.MAG + global.ACT;
	#endregion

global.weaponAttack = "none";
global.weaponSkill = "none";

global.ancestry = 0;
global.ancestryMAX = 14;

global.classArmor = 0;
global.classArmorMax = 11;

global.weapon = 0;
global.weaponMAX = 16;

global.headgear = 0;
global.headgearMAX = 16;

global.relic = 0;
global.relicMAX = 12;

global.background = 0;
global.backgroundMAX = 5;

global.lordName = "FANTOM LORD";

global.lordNumber = 1;
global.lordNumberMAX = 3333;

global.partyLord1 = 0;
global.partyLord2 = 1;
global.partyLord3 = 2;
global.partyLord4 = 3;

#endregion
#region COLORS
colorNeutral = c_white;
colorInf3 = c_red;
colorInf2 = c_orange;
colorInf1 = c_yellow;
colorSup1 = c_lime;
colorSup2 = c_aqua;
colorSup3 = c_fuchsia;

colorLIF = colorNeutral;
colorATK = colorNeutral;
colorDEF = colorNeutral;
colorMAG = colorNeutral;
colorACT = colorNeutral;
#endregion
#region json builder
json_mods = "";
file = file_text_open_read("mods_1.json");
json_mods += file_text_read_string(file);
global.structMods = json_parse(json_mods);
file_text_close(file);

json_mods_2 = "";
file_2 = file_text_open_read("mods_2.json");
json_mods_2 += file_text_read_string(file_2);
global.structMods2 = json_parse(json_mods_2);
file_text_close(file);
#endregion