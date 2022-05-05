/// @description Insert description here
// You can write your code in this editor

image_alpha = 0;
revealed = false;

target = false;

image_xscale /= 5;
image_yscale /= 5;

isSelected = false;

thisName = "Bat";
thisLIF = 30 + (10*global.roomCounter) + irandom_range(-3,3);
thisLIFmax = thisLIF;
thisATK = 5 + (2*global.roomCounter) + irandom_range(-2,5);
thisATKmax = thisATK;
thisDEF = 3 + (2*global.roomCounter) + irandom_range(-2,5);
thisDEFmax = thisDEF;
thisMAG = 2 + (2*global.roomCounter) + irandom_range(-1,2);
thisMAGmax = thisMAG;
scoreAdd = 5;
isFighting = false;
turnComplete = false;
actionsMax = 3;
actions = actionsMax;
bashed = false;

alarmCounter = 50;

obstacle = false;

scrEnemyCombatVars();
