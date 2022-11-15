/// @description Insert description here
// You can write your code in this editor

image_alpha = 1;
revealed = true;

image_xscale /= 5;
image_yscale /= 5;

target = false;

isSelected = false;

thisName = "Warden Troll";
thisLIF = (100 + (10*global.roomCounter)) + irandom_range(-5,5);
thisLIFmax = thisLIF;
thisATK = (20 + (2*global.roomCounter)) + irandom_range(-2,5);
thisATKmax = thisATK;
thisDEF = 1;
thisDEFmax = thisDEF;
thisMAG = 1;
thisMAGmax = thisMAG;
scoreAdd = 120;
isFighting = false;
turnComplete = false;
actionsMax = 2;
actions = actionsMax;
bashed = false;
attackSprite = oVFX_EnemyTrollAttack;
attackSound = snBossTrollAttack;
status = "Uninjured";
LIFpercentage = 100;
statusColor = c_lime;

alarmCounter = 50;

obstacle = false;

scrEnemyCombatVars();