/// @description Insert description here
// You can write your code in this editor

image_alpha = 0;
revealed = false;

target = false;

image_xscale /= 5;
image_yscale /= 5;

isSelected = false;

thisName = "Goblin";
thisLIF = 20 + irandom_range(-3,3);
thisLIFmax = thisLIF;
thisATK = 10 + irandom_range(-2,5);
thisATKmax = thisATK;
thisDEF = 10 + irandom_range(-2,5);
thisDEFmax = thisDEF;
thisMAG = 2 + irandom_range(-1,2);
thisMAGmax = thisMAG;
scoreAdd = 5;
isFighting = false;
turnComplete = false;