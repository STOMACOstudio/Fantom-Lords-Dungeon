/// @description Insert description here
// You can write your code in this editor

image_alpha = 1;
revealed = true;

target = false;

image_xscale /= 2.5;
image_yscale /= 2.5;

isSelected = false;

thisName = "Flan King";
thisLIF = 40 + (5*global.roomCounter) + irandom_range(-8,8);
thisLIFmax = thisLIF;
thisATK = 10 + irandom_range(-2,5);
thisATKmax = thisATK;
thisDEF = (80 + global.roomCounter) + irandom_range(-10,10);
thisDEFmax = thisDEF;
thisMAG = 10 + (2*global.roomCounter) + irandom_range(-4,6);
thisMAGmax = thisMAG;
scoreAdd = 50;
isFighting = false;
turnComplete = false;
actionsMax = 4;
actions = actionsMax;
bashed = false;
attackSprite = oVFX_BossFlanAttack;
attackSound = snFlanAttack;
status = "Uninjured";
LIFpercentage = 100;
statusColor = c_lime;

alarmCounter = 50;

obstacle = false;

scrEnemyCombatVars();
