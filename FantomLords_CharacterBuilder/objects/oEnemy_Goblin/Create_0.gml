/// @description Insert description here
// You can write your code in this editor

image_alpha = 0;
revealed = false;

target = false;

image_xscale /= 5;
image_yscale /= 5;

isSelected = false;

thisName = "Goblin";
thisLIF = 30 + (10*global.roomCounter) + irandom_range(-3,3);
thisLIFmax = thisLIF;
thisATK = 5 + (2*global.roomCounter) + irandom_range(-2,5);
thisATKmax = thisATK;
thisDEF = 5 + (2*global.roomCounter) + irandom_range(-2,5);
thisDEFmax = thisDEF;
thisMAG = 2 + (2*global.roomCounter) + irandom_range(-1,2);
thisMAGmax = thisMAG;
scoreAdd = 5;
isFighting = false;
turnComplete = false;
actionsMax = 3;
actions = actionsMax;

alarmCounter = 50;

obstacle = false;

#region combat vars

lordTop = noone;
lordTopLeft = noone;
lordTopRight = noone;
lordRight = noone;
lordDown = noone;
lordDownLeft = noone;
lordDownRight = noone;
lordLeft = noone;
lordTopTop = noone;
lordRightRight = noone;
lordDownDown = noone;
lordLeftLeft = noone;
lordDownDownRight = noone;
lordDownDownLeft = noone;
lordRightRightTop = noone;
lordRightRightDown = noone;
lordTopTopLeft = noone;
lordTopTopRight = noone;
lordLeftLeftTop = noone;
lordLeftLeftDown = noone;
lordTopTopTop = noone;
lordRightRightRight = noone;
lordDownDownDown = noone;
lordLeftLeftLeft = noone;
lordTarget = noone;

actionsRate = 0;

tile1 = noone;
tile2 = noone;
tile3 = noone;
tile4 = noone;
tile5 = noone;
tile6 = noone;
tile7 = noone;
tile8 = noone;
tile9 = noone;
tile10 = noone;
tile11 = noone;
tile12 = noone;
tile13 = noone;
tile14 = noone;
tile15 = noone;
tile16 = noone;
tile17 = noone;
tile18 = noone;
tile19 = noone;
tile20 = noone;

chooseTarget = 0;
chooseMove = 0;
canMove = false;

dmgENEMY = 0;
dmgTYPE = 0;

#endregion
