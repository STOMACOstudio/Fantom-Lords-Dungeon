/// @description Insert description here
// You can write your code in this editor

// checks for active lords, creates lord for each active lord
if oLordStats.lord1active && !instance_exists(oLord1) instance_create_layer(448,192,"Instances",oLord1);
if oLordStats.lord2active && !instance_exists(oLord2) instance_create_layer(512,192,"Instances",oLord2);
if oLordStats.lord3active && !instance_exists(oLord3) instance_create_layer(448,256,"Instances",oLord3);
if oLordStats.lord4active && !instance_exists(oLord4) instance_create_layer(512,256,"Instances",oLord4);

#region all vars
global.isLocked = false;
global.isLockedSkill = false;
global.castLord = noone;

global.hasControl = true;

global.tileRate = 64;

global.ACTpointsTOT = 0;

global.showRange = false;

global.currentSelectedName = "none";
global.currentSelectedSprite = "none";
global.currentSelectedImageIndex = 0;
global.currentSelectedLIF = 0;
global.currentSelectedLIFmax = 0;
global.currentSelectedATK = 0;
global.currentSelectedATKmax = 0;
global.currentSelectedDEF = 0;
global.currentSelectedDEFmax = 0;
global.currentSelectedMAG = 0;
global.currentSelectedMAGmax = 0;
global.currentSelectedDescription1 = "none";
global.currentSelectedDescription2 = "none";
global.currentSelectedDescription3 = "none";
global.currentSelectedStatus = "none";
global.currentStatusColor = c_lime;
global.currentStatusSleep = 0;
global.currentStatusStun = 0;
global.currentStatusWeak = 0;
global.currentStatusPoison = 0;
global.currentStatusMatchup = 0;

global.dmgLORD = 0;
global.dmgENEMY = 0;
global.scoreAdd = 0;
global.printSkill = "none";

global.LIFgems = 0;
global.ATKgems = 0;
global.DEFgems = 0;
global.MAGgems = 0;
global.ACTgems = 0;
global.RNBgems = 0;
global.BRONZEkey = 0;
global.SILVERkey = 0;
global.GOLDkey = 0;
global.SKULLkey = 0;
global.potionLIF = 0;
global.potionACT = 0;

global.combatActive = false;
global.revealdEnemies = 0;

global.roomCondition = "none";
global.roomType = "";
global.tileNumber = 0;

score = 1000;
global.scoreEndTurn = 5;

global.roomCounter = 1;

global.gameOver = false;
global.bossBattle = 1;

global.hideEnemy = 0;
global.fightMode = false;

global.roomColor = c_white;

global.enterPlaceSewer = false;
global.enterPlacePrison = false;

global.fullScreen = false;

global.killedEnemies = 0;
#endregion