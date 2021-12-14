/// @description Insert description here
// You can write your code in this editor

#region STATS
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


global.modLIF = 0;
global.modATK = 0;
global.modDEF = 0;
global.modMAG = 0;
global.modACT = 0;

global.TOT = global.LIF + global.ATK + global.DEF + global.MAG + global.ACT;

global.weaponAttack = "none";

global.ancestry = 0;
global.ancestryMAX = 14;

global.weapon = 0;
global.weaponMAX = 16;

global.headgear = 0;
global.headgearMAX = 16;

global.relic = 0;
global.relicMAX = 12;

global.background = 0;
global.backgroundMAX = 5;

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