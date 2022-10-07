/// @description Insert description here
// You can write your code in this editor

image_index = global.weapon;

if global.weapon = 0 || global.weapon = 1 || global.weapon = 3 || global.weapon = 4 || global.weapon = 5 
					 || global.weapon = 6 || global.weapon = 8 || global.weapon = 9 || global.weapon = 10
					 || global.weapon = 12 global.weaponAttack = "MELEE";
else if global.weapon = 2 global.weaponAttack = "RANGED";
else if global.weapon = 7 || global.weapon = 11 global.weaponAttack = "MAGIC";

if global.weapon = 0 //Dragon Scythe
{
	global.modLIFweapon = DraScBellLIFmod;
	global.modATKweapon = DraScBellATKmod;
	global.modDEFweapon = DraScBellDEFmod;
	global.modMAGweapon = DraScBellMAGmod;
	global.modACTweapon = DraScBellACTmod;
	global.weaponSkill = "Fire Ball";
}
else if global.weapon = 1 //Dragon Slayer Halberd
{
	global.modLIFweapon = DraSlLIFmod;
	global.modATKweapon = DraSlATKmod;
	global.modDEFweapon = DraSlDEFmod;
	global.modMAGweapon = DraSlMAGmod;
	global.modACTweapon = DraSlACTmod;
	global.weaponSkill = "Hydro Bolt";
}
else if global.weapon = 2 //Enchanted Long Bow
{
	global.modLIFweapon = EnchBowLIFmod;
	global.modATKweapon = EnchBowATKmod;
	global.modDEFweapon = EnchBowDEFmod;
	global.modMAGweapon = EnchBowMAGmod;
	global.modACTweapon = EnchBowACTmod;
	global.weaponSkill = "Poison Vial";
}
else if global.weapon = 3 //Enchanted Uchigatana
{
	global.modLIFweapon = UchiLIFmod;
	global.modATKweapon = UchiATKmod;
	global.modDEFweapon = UchiDEFmod;
	global.modMAGweapon = UchiMAGmod;
	global.modACTweapon = UchiACTmod;
	global.weaponSkill = "Soul Siphon";
}
else if global.weapon = 4 //Ghastly Greatsword
{
	global.modLIFweapon = GhastlLIFmod;
	global.modATKweapon = GhastlATKmod;
	global.modDEFweapon = GhastlDEFmod;
	global.modMAGweapon = GhastlMAGmod;
	global.modACTweapon = GhastlACTmod;
	global.weaponSkill = "Slay";
}
else if global.weapon = 5 //Ice Lance
{
	global.modLIFweapon = IceLaLIFmod;
	global.modATKweapon = IceLaATKmod;
	global.modDEFweapon = IceLaDEFmod;
	global.modMAGweapon = IceLaMAGmod;
	global.modACTweapon = IceLaACTmod;
	global.weaponSkill = "Quake";
}
else if global.weapon = 6 //Royal Greatsword
{
	global.modLIFweapon = RoyalLIFmod;
	global.modATKweapon = RoyalATKmod;
	global.modDEFweapon = RoyalDEFmod;
	global.modMAGweapon = RoyalMAGmod;
	global.modACTweapon = RoyalACTmod;
	global.weaponSkill = "Revenge";
}
else if global.weapon = 7 //Runebinder Staff And Book
{
	global.modLIFweapon = RuneLIFmod;
	global.modATKweapon = RuneATKmod;
	global.modDEFweapon = RuneDEFmod;
	global.modMAGweapon = RuneMAGmod;
	global.modACTweapon = RuneACTmod;
	global.weaponSkill = "Blade Whirl";
}
else if global.weapon = 8 //Sanguine Greatsword
{
	global.modLIFweapon = SangGreLIFmod;
	global.modATKweapon = SangGreATKmod;
	global.modDEFweapon = SangGreDEFmod;
	global.modMAGweapon = SangGreMAGmod;
	global.modACTweapon = SangGreACTmod;
	global.weaponSkill = "Close Shot";
}
else if global.weapon = 9 //Sanguine Scimitars
{
	global.modLIFweapon = SangSciLIFmod;
	global.modATKweapon = SangSciATKmod;
	global.modDEFweapon = SangSciDEFmod;
	global.modMAGweapon = SangSciMAGmod;
	global.modACTweapon = SangSciACTmod;
	global.weaponSkill = "Bash";
}
else if global.weapon = 10 //Shapeshifter Claw
{
	global.modLIFweapon = ShapeLIFmod;
	global.modATKweapon = ShapeATKmod;
	global.modDEFweapon = ShapeDEFmod;
	global.modMAGweapon = ShapeMAGmod;
	global.modACTweapon = ShapeACTmod;
	global.weaponSkill = "Moon Blast";
}
else if global.weapon = 11 //Sword And Drake Shield
{
	global.modLIFweapon = SwoDraLIFmod;
	global.modATKweapon = SwoDraATKmod;
	global.modDEFweapon = SwoDraDEFmod;
	global.modMAGweapon = SwoDraMAGmod;
	global.modACTweapon = SwoDraACTmod;
	global.weaponSkill = "Heal Song";
}
else if global.weapon = 12 //Theurge Staff And Aspersory
{
	global.modLIFweapon = TheurLIFmod;
	global.modATKweapon = TheurATKmod;
	global.modDEFweapon = TheurDEFmod;
	global.modMAGweapon = TheurMAGmod;
	global.modACTweapon = TheurACTmod;
	global.weaponSkill = "Magic Missile";
}
else if global.weapon = 13 //Tower Shield
{
	global.modLIFweapon = TowerLIFmod;
	global.modATKweapon = TowerATKmod;
	global.modDEFweapon = TowerDEFmod;
	global.modMAGweapon = TowerMAGmod;
	global.modACTweapon = TowerACTmod;
	global.weaponSkill = "Drain Slash";
}