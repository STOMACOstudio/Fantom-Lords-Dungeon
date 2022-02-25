/// @description Insert description here
// You can write your code in this editor

image_alpha = 0;
revealed = false;

target = false;

image_xscale /= 5;
image_yscale /= 5;

isSelected = false;

thisName = "Evil Eye";
thisLIF = 15 + irandom_range(-3,3);
thisLIFmax = thisLIF;
thisATK = 3 + irandom_range(-2,5);
thisATKmax = thisATK;
thisDEF = 50 + irandom_range(-10,10);
thisDEFmax = thisDEF;
thisMAG = 13 + irandom_range(-1,2);
thisMAGmax = thisMAG;
scoreAdd = 5;
isFighting = false;
turnComplete = false;

lordTop = "none";
lordRight = "none";
lordDown = "none";
lordLeft = "none";

alarmCounter = 50;