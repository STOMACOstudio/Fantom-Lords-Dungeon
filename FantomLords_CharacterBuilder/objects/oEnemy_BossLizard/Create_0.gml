/// @description Insert description here
// You can write your code in this editor

image_alpha = 1;
revealed = true;

target = false;

image_xscale /= 2.5;
image_yscale /= 2.5;

isSelected = false;

thisName = "Bat King";
thisLIF = (10 + (10*global.roomCounter)) + irandom_range(-5,5);
thisLIFmax = thisLIF;
thisATK = (5 + (2*global.roomCounter)) + irandom_range(-2,5);
thisATKmax = thisATK;
thisDEF = (5 + (2*global.roomCounter)) + irandom_range(-3,3);
thisDEFmax = thisDEF;
thisMAG = (5 + (2*global.roomCounter)) + irandom_range(-3,3);
thisMAGmax = thisMAG;
scoreAdd = 50;
isFighting = false;
turnComplete = false;
actionsMax = 4;
actions = actionsMax;
bashed = false;

alarmCounter = 50;

obstacle = false;

scrEnemyCombatVars();
