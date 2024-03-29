event_inherited();

image_alpha = 0;
revealed = false;

target = false;

image_xscale /= 5;
image_yscale /= 5;

isSelected = false;

thisName = "Flan";
thisLIF = 30 + (3*global.roomCounter) + irandom_range(-3,3);
thisLIFmax = thisLIF;
thisATK = 3 + irandom_range(-2,5);
thisATKmax = thisATK;
thisDEF = 30 + (3*global.roomCounter) + irandom_range(-10,10);
thisDEFmax = thisDEF;
thisMAG = 5 + (2*global.roomCounter) + irandom_range(-1,2);
thisMAGmax = thisMAG;
thisRevealed = false;
scoreAdd = 5;
isFighting = false;
turnComplete = false;
actionsMax = 3;
actions = actionsMax;
actionsRate = 0;
bashed = false;
attackSprite = oVFX_EnemyFlanAttack;
attackSound = snFlanAttack;
status = "Uninjured";
LIFpercentage = 100;
statusColor = c_lime;

alarmCounter = 50;

obstacle = false;

scrEnemyCombatVars();

/// new section
bestiary_entry = "bestiaryFlanDiscovered";
battle_description = ["A flan made", "of pure magic:", "resists attacks." ];
attack_type = thisMAG;