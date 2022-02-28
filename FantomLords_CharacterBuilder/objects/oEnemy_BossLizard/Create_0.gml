/// @description Insert description here
// You can write your code in this editor

image_alpha = 1;
revealed = true;

target = false;

image_xscale /= 2.5;
image_yscale /= 2.5;

isSelected = false;

thisName = "Lizard King";
thisLIF = 50 + irandom_range(-3,3);
thisLIFmax = thisLIF;
thisATK = 15 + irandom_range(-2,5);
thisATKmax = thisATK;
thisDEF = 20 + irandom_range(-2,5);
thisDEFmax = thisDEF;
thisMAG = 10 + irandom_range(-1,2);
thisMAGmax = thisMAG;
scoreAdd = 50;
isFighting = false;
turnComplete = false;
actions = 2;

lordTop = "none";
lordRight = "none";
lordDown = "none";
lordLeft = "none";

alarmCounter = 50;