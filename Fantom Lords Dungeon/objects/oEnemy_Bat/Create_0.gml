/// @description Insert description here
// You can write your code in this editor

image_alpha = 0;
revealed = false;

target = false;

image_xscale /= 5;
image_yscale /= 5;

isSelected = false;

thisName = "Blood Bat";
thisLIF = 50 + (12*global.roomCounter) + irandom_range(-3,3);
thisLIFmax = thisLIF;
thisATK = 9 + (3*global.roomCounter) + irandom_range(-2,5);
thisATKmax = thisATK;
thisDEF = 1;
thisDEFmax = thisDEF;
thisMAG = 2 + (2*global.roomCounter) + irandom_range(-1,2);
thisMAGmax = thisMAG;
scoreAdd = 10;
isFighting = false;
turnComplete = false;
actionsMax = 3;
actions = actionsMax;
bashed = false;
attackSprite = oVFX_BossBatSpell;
attackSound = snAttack;
status = "Uninjured";
LIFpercentage = 100;
statusColor = c_lime;

alarmCounter = 50;

obstacle = false;

scrEnemyCombatVars();
