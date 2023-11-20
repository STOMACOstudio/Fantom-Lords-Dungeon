event_inherited();

image_alpha = 0;
revealed = false;

target = false;

image_xscale /= 5;
image_yscale /= 5;

isSelected = false;

thisName = "Bat";
thisLIF = 30 + (10*global.roomCounter) + irandom_range(-3,3);
thisLIFmax = thisLIF;
thisATK = 5 + (2*global.roomCounter) + irandom_range(-2,5);
thisATKmax = thisATK;
thisDEF = 1;
thisDEFmax = thisDEF;
thisMAG = 2 + (2*global.roomCounter) + irandom_range(-1,2);
thisMAGmax = thisMAG;
scoreAdd = 5;
isFighting = false;
turnComplete = false;
actionsMax = 3;
actions = actionsMax;
bashed = false;
attackSprite = oVFX_EnemyBatAttack;
attackSound = snAttack;
status = "Uninjured";
LIFpercentage = 100;
statusColor = c_lime;

alarmCounter = 50;

obstacle = false;

scrEnemyCombatVars();

/// new section
bestiary_entry = "bestiaryBatDiscovered";
battle_description = ["Bats are weak", "but come in", "numbers."];
attack_type = thisATK;