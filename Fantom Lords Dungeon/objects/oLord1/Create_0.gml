/// @description Insert description here
// You can write your code in this editor

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

#region lord status
battlecry = 0;
burden = 0;
shadow = 0;
weaken = 0;
stun = 0;
#endregion