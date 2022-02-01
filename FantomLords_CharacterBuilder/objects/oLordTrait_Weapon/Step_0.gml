/// @description Insert description here
// You can write your code in this editor

image_index = global.weapon;

if global.weapon = 3 || global.weapon = 4 || global.weapon = 6 || global.weapon = 7 || global.weapon = 9 
					 || global.weapon = 10 || global.weapon = 11 || global.weapon = 12 || global.weapon = 13
					 || global.weapon = 14 global.weaponAttack = "MELEE";
else global.weaponAttack = "RANGED";


if global.weapon = 0 //Charred Wand
{
	global.modLIFweapon = CharBellLIFmod;
	global.modATKweapon = CharBellATKmod;
	global.modDEFweapon = CharBellDEFmod;
	global.modMAGweapon = CharBellMAGmod;
	global.modACTweapon = CharBellACTmod;
	global.weaponSkill = "Fire Ball";
}
else if global.weapon = 1 //Coral Staff
{
	global.modLIFweapon = CoralHydroLIFmod;
	global.modATKweapon = CoralHydroATKmod;
	global.modDEFweapon = CoralHydroDEFmod;
	global.modMAGweapon = CoralHydroMAGmod;
	global.modACTweapon = CoralHydroACTmod;
	global.weaponSkill = "Hydro Bolt";
}
else if global.weapon = 2 //Crossbow
{
	global.modLIFweapon = CrossbowLIFmod;
	global.modATKweapon = CrossbowATKmod;
	global.modDEFweapon = CrossbowDEFmod;
	global.modMAGweapon = CrossbowMAGmod;
	global.modACTweapon = CrossbowACTmod;
	global.weaponSkill = "Poison Vial";
}
else if global.weapon = 3 //Death Schyte
{
	global.modLIFweapon = SchySouLIFmod;
	global.modATKweapon = SchySouATKmod;
	global.modDEFweapon = SchySouDEFmod;
	global.modMAGweapon = SchySouMAGmod;
	global.modACTweapon = SchySouACTmod;
	global.weaponSkill = "Soul Siphon";
}
else if global.weapon = 4 //Dragon Slayer
{
	global.modLIFweapon = DraSlaylLIFmod;
	global.modATKweapon = DraSlaylATKmod;
	global.modDEFweapon = DraSlaylDEFmod;
	global.modMAGweapon = DraSlaylMAGmod;
	global.modACTweapon = DraSlaylACTmod;
	global.weaponSkill = "Slay";
}
else if global.weapon = 5 //Elemental Staff
{
	global.modLIFweapon = EleStaLIFmod;
	global.modATKweapon = EleStaATKmod;
	global.modDEFweapon = EleStaDEFmod;
	global.modMAGweapon = EleStaMAGmod;
	global.modACTweapon = EleStaACTmod;
	global.weaponSkill = "Stone Shield";
}
else if global.weapon = 6 //Holy Avenger
{
	global.modLIFweapon = HolyAvLIFmod;
	global.modATKweapon = HolyAvATKmod;
	global.modDEFweapon = HolyAvDEFmod;
	global.modMAGweapon = HolyAvMAGmod;
	global.modACTweapon = HolyAvACTmod;
	global.weaponSkill = "Exorcism";
}
else if global.weapon = 7 //Katars
{
	global.modLIFweapon = KataLIFmod;
	global.modATKweapon = KataATKmod;
	global.modDEFweapon = KataDEFmod;
	global.modMAGweapon = KataMAGmod;
	global.modACTweapon = KataACTmod;
	global.weaponSkill = "Double Strike";
}
else if global.weapon = 8 //Longbow
{
	global.modLIFweapon = LongBoLIFmod;
	global.modATKweapon = LongBoATKmod;
	global.modDEFweapon = LongBoDEFmod;
	global.modMAGweapon = LongBoMAGmod;
	global.modACTweapon = LongBoACTmod;
	global.weaponSkill = "Close Shot";
}
else if global.weapon = 9 //Longsword
{
	global.modLIFweapon = LongSwLIFmod;
	global.modATKweapon = LongSwATKmod;
	global.modDEFweapon = LongSwDEFmod;
	global.modMAGweapon = LongSwMAGmod;
	global.modACTweapon = LongSwACTmod;
	global.weaponSkill = "Protect";
}
else if global.weapon = 10 //Moonlight
{
	global.modLIFweapon = MoonGrLIFmod;
	global.modATKweapon = MoonGrATKmod;
	global.modDEFweapon = MoonGrDEFmod;
	global.modMAGweapon = MoonGrMAGmod;
	global.modACTweapon = MoonGrACTmod;
	global.weaponSkill = "Moon Power";
}
else if global.weapon = 11 //Rapier and Harp
{
	global.modLIFweapon = RapHarLIFmod;
	global.modATKweapon = RapHarATKmod;
	global.modDEFweapon = RapHarDEFmod;
	global.modMAGweapon = RapHarMAGmod;
	global.modACTweapon = RapHarACTmod;
	global.weaponSkill = "Heal Song";
}
else if global.weapon = 12 //Scimitar and Magic
{
	global.modLIFweapon = SciMaLIFmod;
	global.modATKweapon = SciMaATKmod;
	global.modDEFweapon = SciMaDEFmod;
	global.modMAGweapon = SciMaMAGmod;
	global.modACTweapon = SciMaACTmod;
	global.weaponSkill = "Magic Missile";
}
else if global.weapon = 13 //Sickle and Ankh
{
	global.modLIFweapon = SikAnLIFmod;
	global.modATKweapon = SikAnATKmod;
	global.modDEFweapon = SikAnDEFmod;
	global.modMAGweapon = SikAnMAGmod;
	global.modACTweapon = SikAnACTmod;
	global.weaponSkill = "Drain Slash";
}
else if global.weapon = 14 //Stormbringer
{
	global.modLIFweapon = StormLIFmod;
	global.modATKweapon = StormATKmod;
	global.modDEFweapon = StormDEFmod;
	global.modMAGweapon = StormMAGmod;
	global.modACTweapon = StormACTmod;
	global.weaponSkill = "Storm";
}
else if global.weapon = 15 //Wand and Bell
{
	global.modLIFweapon = WaBellLIFmod;
	global.modATKweapon = WaBellATKmod;
	global.modDEFweapon = WaBellDEFmod;
	global.modMAGweapon = WaBellMAGmod;
	global.modACTweapon = WaBellACTmod;
	global.weaponSkill = "Scry";
}
else if global.weapon = 16 //Wooden Staff
{
	global.modLIFweapon = WoodLIFmod;
	global.modATKweapon = WoodATKmod;
	global.modDEFweapon = WoodDEFmod;
	global.modMAGweapon = WoodMAGmod;
	global.modACTweapon = WoodACTmod;
	global.weaponSkill = "Hunt";
}