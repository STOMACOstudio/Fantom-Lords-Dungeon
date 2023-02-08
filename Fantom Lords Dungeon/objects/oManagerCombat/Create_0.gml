/// @description Insert description here
// You can write your code in this editor

combatPhase = 0;
enemy = array_create(instance_number(oEnemy0_Father));
i2 = 0;
enemy2 = array_create(instance_number(oEnemy0_Father));

fightStart = 0;
fightEnd = 0;
i  = 0;

whosfighting = "none";

function combat_start() {
	show_debug_message("---> combat_start()");
	if(global.fightMode) { return; }
	instance_create_layer(512,224,"VFX",oVFX_Combat);
}