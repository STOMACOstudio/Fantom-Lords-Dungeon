/// @description Insert description here
// You can write your code in this editor

image_alpha = 0;
revealed = false;

target = false;

image_xscale /= 5;
image_yscale /= 5;

isSelected = false;

thisName = "Skeleton";
thisLIF = 62 + (14*global.roomCounter) + irandom_range(-3,3);
thisLIFmax = thisLIF;
thisATK = 13 + (3*global.roomCounter) + irandom_range(-2,5);
thisATKmax = thisATK;
thisDEF = 5 + (3*global.roomCounter) + irandom_range(-2,5);
thisDEFmax = thisDEF;
thisMAG = 1;
thisMAGmax = thisMAG;
scoreAdd = 15;
isFighting = false;
turnComplete = false;
actionsMax = 3;
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
