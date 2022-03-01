/// @description Insert description here
// You can write your code in this editor

image_alpha = 1;
revealed = true;

target = false;

image_xscale /= 2.5;
image_yscale /= 2.5;

isSelected = false;

thisName = "Eye King";
thisLIF = 40 + irandom_range(-3,3);
thisLIFmax = thisLIF;
thisATK = 10 + irandom_range(-2,5);
thisATKmax = thisATK;
thisDEF = 100 + irandom_range(-2,5);
thisDEFmax = thisDEF;
thisMAG = 24 + irandom_range(-4,6);
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