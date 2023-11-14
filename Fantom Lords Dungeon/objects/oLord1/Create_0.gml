/// @description Insert description here
// You can write your code in this editor
event_inherited();



thisLocked = false;
thisLord_ascend = oLordStats.lord1ascend = true;
thisLord_name = oLordStats.lord1name;
thisLord_LIF = oLordStats.lord1LIF;
thisLord_LIFmax = oLordStats.lord1LIFmax;
thisLord_ATK = oLordStats.lord1ATK;
thisLord_ATKmax = oLordStats.lord1ATKmax;
thisLord_DEF = oLordStats.lord1DEF;
thisLord_DEFmax = oLordStats.lord1DEFmax;
thisLord_MAG = oLordStats.lord1MAG;
thisLord_MAGmax = oLordStats.lord1MAGmax;
thisLord_ACT = oLordStats.lord1ACT;
thisLord_ACTmax = oLordStats.lord1ACTmax;
thisLord_ACTpoints = round((thisLord_ACT)/5);
if thisLord_ACTpoints < 2 thisLord_ACTpoints = 2;
thisLord_ACTpointsMAX = round((thisLord_ACT)/5);
if thisLord_ACTpointsMAX < 2 thisLord_ACTpointsMAX = 2;
thisLord_typeAttack = oLordStats.lord1typeAttack;
thisLord_skillClassArmor = oLordStats.lord1skillClassArmor;
thisLord_skillWeapon = oLordStats.lord1skillWeapon;
thisLord_level = thisLord_LIFmax + thisLord_ATK + thisLord_DEF + thisLord_MAG + thisLord_ACT;
sprite_index = oLordStats.lord1sprite;
image_xscale /= 5;
image_yscale /= 5;
dmgLORD = 0;

if (thisLord_ascend)
{
	oGUI_skill2Lord1.sprite_index = sGUI_skillClassArmorAscended;
	oGUI_skill3Lord1.sprite_index = sGUI_skillWeaponAscended;
}

#region attack and movement
enemy = noone;
instTopLeft = noone;
instTop = noone;
instTopRight = noone;
instRight = noone;
instDownRight = noone;
instDown = noone;
instDownLeft = noone;
instLeft = noone;
enemyTopTop = noone;
enemyRightRight = noone;
enemyDownDown = noone;
enemyLeftLeft = noone;
enemyTopLeft = noone;
enemyTop = noone;
enemyTopRight = noone;
enemyRight = noone;
enemyDownRight = noone;
enemyDown = noone;
enemyDownLeft = noone;
enemyLeft = noone;
WarFogTopLeft = noone;
WarFogTop = noone;
WarFogTopRight = noone;
WarFogRight = noone;
WarFogDownRight = noone;
WarFogDown = noone;
WarFogDownLeft = noone;
WarFogLeft = noone;
lastX = 0;
lastY = 0;
#endregion

spellCast = -1;

scrLordStatus()


/////////////////////////////////////////////// NEW SECTION ////////////////////////////////////////////////////////

// variables that depend on a specific lord
gui_lord_frame = oGUI_LordFrame1;
gui_death_lord = oGUI_deathLord;
gui_act_points = oGUI_ACTpoints1;
gui_lord_health_front = oGUI_lordHealthFront1;
gui_lord_health_print = oGUI_lordHealthPrint1;
lord_number = "1";
vfx_spell_cast = oVFX_spellCast1;

//function step() {
//	if(!active) {return;}
//	if(global.fightMode) {
//		if (!tower) { scrLordMovement(); }
//	} else {
//		scrLordMovementFree();
//	}
//	if(thisLord_LIF <= 0) {
//		instance_create_layer(gui_lord_frame.x,gui_lord_frame.y,"BG",gui_death_lord );
//		instance_destroy(gui_act_points);
//		instance_destroy(gui_lord_frame);
//		instance_destroy(gui_lord_health_front);
//		instance_destroy(gui_lord_health_print);
//		var oLordStatsValue = $"lord{lord_number}active";
//		struct_set(oLordStats,oLordStatsValue, false );
//		//[$ oLordStatsValue] = false;
//		global.isLocked = false;
//		instance_destroy();
//	}
//	if(thisLocked) {
//		if(!instance_exists(vfx_spell_cast)) {
//			scrLordCheckTarget();
//		}
//	}
//	thisLord_level = thisLord_LIFmax + thisLord_ATK + thisLord_DEF + thisLord_MAG + thisLord_ACT;
//}

//function init() {
//	active = true;
//}
init();