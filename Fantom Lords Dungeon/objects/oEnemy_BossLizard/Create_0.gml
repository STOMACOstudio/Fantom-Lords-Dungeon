/// @description Insert description here
// You can write your code in this editor

image_alpha = 1;
revealed = true;

global.bestiaryBatKingDiscovered = true;

image_xscale /= 5;
image_yscale /= 5;

target = false;

isSelected = false;

thisName = "Bat King";
thisLIF = (10 + (10*global.roomCounter)) + irandom_range(-5,5);
thisLIFmax = thisLIF;
thisATK = (5 + (2*global.roomCounter)) + irandom_range(-2,5);
thisATKmax = thisATK;
thisDEF = 1;
thisDEFmax = thisDEF;
thisMAG = (5 + (2*global.roomCounter)) + irandom_range(-3,3);
thisMAGmax = thisMAG;
scoreAdd = 50;
isFighting = false;
turnComplete = false;
actionsMax = 4;
actions = actionsMax;
bashed = false;
attackSprite = oVFX_EnemyBatAttack;
attackSound = snAttack;
status = "Uninjured";
LIFpercentage = 100;
statusColor = c_lime;

alarmCounter = 50;

obstacle = false;

scrEnemyCombatVars();