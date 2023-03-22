/// @description Insert description here
// You can write your code in this editor

image_index = irandom_range(0,3);

image_alpha = 0;
revealed = false;

target = false;

isSelected = false;

thisName = "Obstacle";
thisLIF = 1;
thisLIFmax = thisLIF;
thisATK = 0;
thisATKmax = thisATK;
thisDEF = 0;
thisDEFmax = thisDEF;
thisMAG = 0;
thisMAGmax = thisMAG;
scoreAdd = 1;
actionsMax = 0;
actions = 0;

isFighting = false;
turnComplete = false;

obstacle = true;
sleep = 0;
bashed = false;
stun = 0;