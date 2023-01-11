/// @description Insert description here
// You can write your code in this editor

image_alpha = 1;
revealed = true;

global.bestiarySkeletonKingDiscovered = true;

image_xscale /= 5;
image_yscale /= 5;

target = false;

isSelected = false;

thisName = "Skeleton King";
thisLIF = (30 + (10*global.roomCounter)) + irandom_range(-5,5);
thisLIFmax = thisLIF;
thisATK = (10 + (2*global.roomCounter)) + irandom_range(-2,5);
thisATKmax = thisATK;
thisDEF = 1;
thisDEFmax = thisDEF;
thisMAG = (12 + (2*global.roomCounter)) + irandom_range(-3,3);
thisMAGmax = thisMAG;
scoreAdd = 120;
isFighting = false;
turnComplete = false;
actionsMax = 4;
actions = actionsMax;
bashed = false;
attackSprite = oVFX_EnemySkeletonAttack;
attackSound = snAttack;
status = "Uninjured";
LIFpercentage = 100;
statusColor = c_lime;

alarmCounter = 50;

obstacle = false;

scrEnemyCombatVars();