/// @description Insert description here
// You can write your code in this editor

image_alpha = 0;
revealed = false;

target = false;

image_xscale /= 5;
image_yscale /= 5;

isSelected = false;

thisName = "Shade";
thisLIF = 38 + (3*global.roomCounter) + irandom_range(-3,3);
thisLIFmax = thisLIF;
thisATK = 3 + irandom_range(-2,5);
thisATKmax = thisATK;
thisDEF = 50 + (3*global.roomCounter) + irandom_range(-10,10);
thisDEFmax = thisDEF;
thisMAG = 10 + (3*global.roomCounter) + irandom_range(-1,2);
thisMAGmax = thisMAG;
thisRevealed = false;
scoreAdd = 20;
isFighting = false;
turnComplete = false;
actionsMax = 3;
actions = actionsMax;
actionsRate = 0;
bashed = false;
attackSprite = oVFX_EnemyShadeAttack;
attackSound = snShadeAttack;
status = "Uninjured";
LIFpercentage = 100;
statusColor = c_lime;

alarmCounter = 50;

obstacle = false;

scrEnemyCombatVars();