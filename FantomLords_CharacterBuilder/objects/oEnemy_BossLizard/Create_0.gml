/// @description Insert description here
// You can write your code in this editor

image_alpha = 1;
revealed = true;

target = false;

image_xscale /= 2.5;
image_yscale /= 2.5;

isSelected = false;

thisName = "Lizard King";
thisLIF = 40 + (10*global.roomCounter) + irandom_range(-5,5);
thisLIFmax = thisLIF;
thisATK = 10 + (2*global.roomCounter) + irandom_range(-2,5);
thisATKmax = thisATK;
thisDEF = 20 + (2*global.roomCounter) + irandom_range(-3,3);
thisDEFmax = thisDEF;
thisMAG = 10 + (2*global.roomCounter) + irandom_range(-3,3);
thisMAGmax = thisMAG;
scoreAdd = 50;
isFighting = false;
turnComplete = false;
actionsMax = 2;
actions = actionsMax;

lordTop = "none";
lordRight = "none";
lordDown = "none";
lordLeft = "none";

alarmCounter = 50;

obstacle = false;