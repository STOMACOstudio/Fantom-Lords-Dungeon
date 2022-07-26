/// @description Insert description here
// You can write your code in this editor

image_alpha = 1;
revealed = true;

target = false;

image_xscale /= 5;
image_yscale /= 5;

isSelected = false;

thisName = "Mimic";
thisLIF = 75 + (3*global.roomCounter) + irandom_range(-3,3);
thisLIFmax = thisLIF;
thisATK = 18 + irandom_range(-2,5);
thisATKmax = thisATK;
thisDEF = 1;
thisDEFmax = thisDEF;
thisMAG = 8;
thisMAGmax = thisMAG;
thisRevealed = false;
scoreAdd = 15;
isFighting = false;
turnComplete = false;
actionsMax = 3;
actions = actionsMax;
actionsRate = 0;
bashed = false;
attackSprite = oVFX_EnemyBatAttack;
attackSound = snAttack;
status = "Uninjured";
LIFpercentage = 100;
statusColor = c_lime;

value =
{
    value : 50,
};

alarmCounter = 50;

obstacle = false;

scrEnemyCombatVars();