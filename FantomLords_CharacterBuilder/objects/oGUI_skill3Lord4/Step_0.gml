/// @description Insert description here
// You can write your code in this editor

if mouse_x > x && mouse_x < x+32 && mouse_y > y && mouse_y < y+32 && !instance_exists(oGUI_printSkill)
{
	if instance_exists(oLord4)
	{
		if oLord4.thisLord_skillWeapon = 0 global.printSkill = "FIREBALL";
		else if oLord4.thisLord_skillWeapon = 1 global.printSkill = "HYDROBOLT";
		else if oLord4.thisLord_skillWeapon = 2 global.printSkill = "POISON VIAL";
		else if oLord4.thisLord_skillWeapon = 3 global.printSkill = "SOUL SIPHON";
		else if oLord4.thisLord_skillWeapon = 4 global.printSkill = "SLAY";
		else if oLord4.thisLord_skillWeapon = 5 global.printSkill = "STONE SHIELD";
		else if oLord4.thisLord_skillWeapon = 6 global.printSkill = "EXORCISM";
		else if oLord4.thisLord_skillWeapon = 7 global.printSkill = "DOUBLE STRIKE";
		else if oLord4.thisLord_skillWeapon = 8 global.printSkill = "CLOSE SHOT";
		else if oLord4.thisLord_skillWeapon = 9 global.printSkill = "PROTECT";
		else if oLord4.thisLord_skillWeapon = 10 global.printSkill = "MOON POWER";
		else if oLord4.thisLord_skillWeapon = 11 global.printSkill = "HEALING SONG";
		else if oLord4.thisLord_skillWeapon = 12 global.printSkill = "MAGIC MISSILE";
		else if oLord4.thisLord_skillWeapon = 13 global.printSkill = "DRAIN SLASH";
		else if oLord4.thisLord_skillWeapon = 14 global.printSkill = "STORM";
		else if oLord4.thisLord_skillWeapon = 11 global.printSkill = "SCRY";
		else if oLord4.thisLord_skillWeapon = 11 global.printSkill = "HUNT";
	
		instance_create_layer(mouse_x,mouse_y,"Instances",oGUI_printSkill);
	}
}