/// @description Insert description here
// You can write your code in this editor

if mouse_x > x && mouse_x < x+32 && mouse_y > y && mouse_y < y+32 && !instance_exists(oGUI_printSkill)
{
	if instance_exists(oLord2)
	{
		if oLord2.thisLord_skillClassArmor = 0 global.printSkill = "SCOUT";
		else if oLord2.thisLord_skillClassArmor = 1 global.printSkill = "SHADOW";
		else if oLord2.thisLord_skillClassArmor = 2 global.printSkill = "SUNBATHE";
		else if oLord2.thisLord_skillClassArmor = 3 global.printSkill = "SUTURE";
		else if oLord2.thisLord_skillClassArmor = 4 global.printSkill = "LIFESTEAL";
		else if oLord2.thisLord_skillClassArmor = 5 global.printSkill = "BLAST";
		else if oLord2.thisLord_skillClassArmor = 6 global.printSkill = "SONG";
		else if oLord2.thisLord_skillClassArmor = 7 global.printSkill = "BURDEN";
		else if oLord2.thisLord_skillClassArmor = 8 global.printSkill = "BURN";
		else if oLord2.thisLord_skillClassArmor = 9 global.printSkill = "REVIVE";
		else if oLord2.thisLord_skillClassArmor = 10 global.printSkill = "BATTLECRY";
		else if oLord2.thisLord_skillClassArmor = 11 global.printSkill = "CRUSH";
	
		instance_create_layer(mouse_x,mouse_y,"Instances",oGUI_printSkill);
	}
}