/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord1active && !instance_exists(oLord1) instance_create_layer(450,192,"Instances",oLord1);
if oLordStats.lord2active && !instance_exists(oLord2) instance_create_layer(514,192,"Instances",oLord2);
if oLordStats.lord3active && !instance_exists(oLord3) instance_create_layer(450,256,"Instances",oLord3);
if oLordStats.lord4active && !instance_exists(oLord4) instance_create_layer(514,256,"Instances",oLord4);

global.isLocked = false;
global.isLockedSkill = false;

global.tileRate = 64;

global.ACTpointsTOT = 0;

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
global.currentSelectedDescription1 = 0;
global.currentSelectedDescription2 = 0;
global.currentSelectedDescription3 = 0;

global.dmgLORD = 0;
global.dmgENEMY = 0;
global.scoreAdd = 0;
global.printSkill = "none";

global.LIFgems = 1;
global.ATKgems = 1;
global.DEFgems = 1;
global.MAGgems = 1;
global.ACTgems = 1;
global.RNBgems = 1;
global.BRONZEkey = 5;
global.SILVERkey = 0;
global.GOLDkey = 0;
global.SKULLkey = 0;
global.potionLIF = 0;

global.roomCondition = "none";
global.tileNumber = 0;

global.waitTimer = 50;

score = 0;

global.roomCounter = 1;

global.gameOver = false;
global.bossBattle = 1;
//global.nextRoom = false;

global.hideEnemy = 0;
global.fightMode = false;