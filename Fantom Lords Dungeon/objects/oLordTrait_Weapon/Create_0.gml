/// @description Insert description here
// You can write your code in this editor

list_weapon = ds_list_create();

ds_list_add(list_weapon, "Charred Wand and Fireball", "Coral Staff and Hydrobolt", "Crossbow and Concoction",
						 "Death Schyte and Soul", "Dragon Slayer", "Elemental Staff and Grimoire", "Holy Avenger",
						 "Katars", "Longbow and Arrows", "Longsword and Shield", "Moonlight Greatsword",
						 "Rapier and Harp", "Scimitar and Magic Missile", "Sickle and Ankh", "Stormbringer",
						 "Wand and Diviner Ball", "Wooden Staff and Sparrow");

#region Charred Wand mods +8
CharBellLIFmod = 0;
CharBellATKmod = 0;
CharBellDEFmod = 0;
CharBellMAGmod = 8;
CharBellACTmod = 0;
#endregion
#region Coral Staff mods +6
CoralHydroLIFmod = 1;
CoralHydroATKmod = 0;
CoralHydroDEFmod = 1;
CoralHydroMAGmod = 3;
CoralHydroACTmod = 1;
#endregion
#region Crossbow mods +4
CrossbowLIFmod = 0;
CrossbowATKmod = 2;
CrossbowDEFmod = 0;
CrossbowMAGmod = -1;
CrossbowACTmod = 3;
#endregion
#region Death Schyte mods +10
SchySouLIFmod = 4;
SchySouATKmod = 2;
SchySouDEFmod = 0;
SchySouMAGmod = 4;
SchySouACTmod = 0;
#endregion
#region Dragon Slayer mods +6
DraSlaylLIFmod = 0;
DraSlaylATKmod = 6;
DraSlaylDEFmod = 0;
DraSlaylMAGmod = 0;
DraSlaylACTmod = 0;
#endregion
#region Elemental Staff mods +6
EleStaLIFmod = 1;
EleStaATKmod = 0;
EleStaDEFmod = 1;
EleStaMAGmod = 4;
EleStaACTmod = 0;
#endregion
#region Holy Avenger mods +8
HolyAvLIFmod = 2;
HolyAvATKmod = 2;
HolyAvDEFmod = 0;
HolyAvMAGmod = 2;
HolyAvACTmod = 2;
#endregion
#region Katars mods +4
KataLIFmod = 0;
KataATKmod = 2;
KataDEFmod = -1;
KataMAGmod = 0;
KataACTmod = 3;
#endregion
#region Longbow mods +4
LongBoLIFmod = 0;
LongBoATKmod = 2;
LongBoDEFmod = 0;
LongBoMAGmod = 0;
LongBoACTmod = 2;
#endregion
#region Longsword mods +4
LongSwLIFmod = 0;
LongSwATKmod = 2;
LongSwDEFmod = 2;
LongSwMAGmod = 0;
LongSwACTmod = 0;
#endregion
#region Moonlight mods +10
MoonGrLIFmod = 0;
MoonGrATKmod = 5;
MoonGrDEFmod = 0;
MoonGrMAGmod = 5;
MoonGrACTmod = 0;
#endregion
#region Rapier and Harp mods +6
RapHarLIFmod = 1;
RapHarATKmod = 1;
RapHarDEFmod = 1;
RapHarMAGmod = 1;
RapHarACTmod = 2;
#endregion
#region Scimitar and Magic mods +8
SciMaLIFmod = 0;
SciMaATKmod = 3;
SciMaDEFmod = 0;
SciMaMAGmod = 3;
SciMaACTmod = 2;
#endregion
#region Sickle and Ankh mods +4
SikAnLIFmod = 1;
SikAnATKmod = 1;
SikAnDEFmod = 0;
SikAnMAGmod = 1;
SikAnACTmod = 1;
#endregion
#region Stormbringer mods +8
StormLIFmod = 0;
StormATKmod = 4;
StormDEFmod = 0;
StormMAGmod = 4;
StormACTmod = 0;
#endregion
#region Wand and Ball mods +4
WaBellLIFmod = 1;
WaBellATKmod = -1;
WaBellDEFmod = 0;
WaBellMAGmod = 4;
WaBellACTmod = 0;
#endregion
#region Wooden Staff mods +6
WoodLIFmod = 2;
WoodATKmod = 0;
WoodDEFmod = 0;
WoodMAGmod = 2;
WoodACTmod = 2;
#endregion

#region edit
	/*
	#region Charred Wand mods
	CharBellLIFmod = real(global.structMods2.Weapon.CharredFire.LIF);
	CharBellATKmod = real(global.structMods2.Weapon.CharredFire.ATK);
	CharBellDEFmod = real(global.structMods2.Weapon.CharredFire.DEF);
	CharBellMAGmod = real(global.structMods2.Weapon.CharredFire.MAG);
	CharBellACTmod = real(global.structMods2.Weapon.CharredFire.ACT);
	#endregion
	#region Coral Staff mods
	CoralHydroLIFmod = real(global.structMods2.Weapon.CoralHydro.LIF);
	CoralHydroATKmod = real(global.structMods2.Weapon.CoralHydro.ATK);
	CoralHydroDEFmod = real(global.structMods2.Weapon.CoralHydro.DEF);
	CoralHydroMAGmod = real(global.structMods2.Weapon.CoralHydro.MAG);
	CoralHydroACTmod = real(global.structMods2.Weapon.CoralHydro.ACT);
	#endregion
	#region Crossbow mods
	CrossbowLIFmod = real(global.structMods2.Weapon.Crossbow.LIF);
	CrossbowATKmod = real(global.structMods2.Weapon.Crossbow.ATK);
	CrossbowDEFmod = real(global.structMods2.Weapon.Crossbow.DEF);
	CrossbowMAGmod = real(global.structMods2.Weapon.Crossbow.MAG);
	CrossbowACTmod = real(global.structMods2.Weapon.Crossbow.ACT);
	#endregion
	#region Death Schyte mods
	SchySouLIFmod = real(global.structMods2.Weapon.SchyteSoul.LIF);
	SchySouATKmod = real(global.structMods2.Weapon.SchyteSoul.ATK);
	SchySouDEFmod = real(global.structMods2.Weapon.SchyteSoul.DEF);
	SchySouMAGmod = real(global.structMods2.Weapon.SchyteSoul.MAG);
	SchySouACTmod = real(global.structMods2.Weapon.SchyteSoul.ACT);
	#endregion
	#region Dragon Slayer mods
	DraSlaylLIFmod = real(global.structMods2.Weapon.DragonSlayer.LIF);
	DraSlaylATKmod = real(global.structMods2.Weapon.DragonSlayer.ATK);
	DraSlaylDEFmod = real(global.structMods2.Weapon.DragonSlayer.DEF);
	DraSlaylMAGmod = real(global.structMods2.Weapon.DragonSlayer.MAG);
	DraSlaylACTmod = real(global.structMods2.Weapon.DragonSlayer.ACT);
	#endregion
	#region Elemental Staff mods
	EleStaLIFmod = real(global.structMods2.Weapon.ElementalGrim.LIF);
	EleStaATKmod = real(global.structMods2.Weapon.ElementalGrim.ATK);
	EleStaDEFmod = real(global.structMods2.Weapon.ElementalGrim.DEF);
	EleStaMAGmod = real(global.structMods2.Weapon.ElementalGrim.MAG);
	EleStaACTmod = real(global.structMods2.Weapon.ElementalGrim.ACT);
	#endregion
	#region Holy Avenger mods
	HolyAvLIFmod = real(global.structMods2.Weapon.HolyAvenger.LIF);
	HolyAvATKmod = real(global.structMods2.Weapon.HolyAvenger.ATK);
	HolyAvDEFmod = real(global.structMods2.Weapon.HolyAvenger.DEF);
	HolyAvMAGmod = real(global.structMods2.Weapon.HolyAvenger.MAG);
	HolyAvACTmod = real(global.structMods2.Weapon.HolyAvenger.ACT);
	#endregion
	#region Katars mods
	KataLIFmod = real(global.structMods2.Weapon.Katars.LIF);
	KataATKmod = real(global.structMods2.Weapon.Katars.ATK);
	KataDEFmod = real(global.structMods2.Weapon.Katars.DEF);
	KataMAGmod = real(global.structMods2.Weapon.Katars.MAG);
	KataACTmod = real(global.structMods2.Weapon.Katars.ACT);
	#endregion
	#region Longbow mods
	LongBoLIFmod = real(global.structMods2.Weapon.Longbow.LIF);
	LongBoATKmod = real(global.structMods2.Weapon.Longbow.ATK);
	LongBoDEFmod = real(global.structMods2.Weapon.Longbow.DEF);
	LongBoMAGmod = real(global.structMods2.Weapon.Longbow.MAG);
	LongBoACTmod = real(global.structMods2.Weapon.Longbow.ACT);
	#endregion
	#region Longsword mods
	LongSwLIFmod = real(global.structMods2.Weapon.Longsword.LIF);
	LongSwATKmod = real(global.structMods2.Weapon.Longsword.ATK);
	LongSwDEFmod = real(global.structMods2.Weapon.Longsword.DEF);
	LongSwMAGmod = real(global.structMods2.Weapon.Longsword.MAG);
	LongSwACTmod = real(global.structMods2.Weapon.Longsword.ACT);
	#endregion
	#region Moonlight mods
	MoonGrLIFmod = real(global.structMods2.Weapon.Moonlight.LIF);
	MoonGrATKmod = real(global.structMods2.Weapon.Moonlight.ATK);
	MoonGrDEFmod = real(global.structMods2.Weapon.Moonlight.DEF);
	MoonGrMAGmod = real(global.structMods2.Weapon.Moonlight.MAG);
	MoonGrACTmod = real(global.structMods2.Weapon.Moonlight.ACT);
	#endregion
	#region Rapier and Harp mods
	RapHarLIFmod = real(global.structMods2.Weapon.RapierHarp.LIF);
	RapHarATKmod = real(global.structMods2.Weapon.RapierHarp.ATK);
	RapHarDEFmod = real(global.structMods2.Weapon.RapierHarp.DEF);
	RapHarMAGmod = real(global.structMods2.Weapon.RapierHarp.MAG);
	RapHarACTmod = real(global.structMods2.Weapon.RapierHarp.ACT);
	#endregion
	#region Scimitar and Magic mods
	SciMaLIFmod = real(global.structMods2.Weapon.SciMiss.LIF);
	SciMaATKmod = real(global.structMods2.Weapon.SciMiss.ATK);
	SciMaDEFmod = real(global.structMods2.Weapon.SciMiss.DEF);
	SciMaMAGmod = real(global.structMods2.Weapon.SciMiss.MAG);
	SciMaACTmod = real(global.structMods2.Weapon.SciMiss.ACT);
	#endregion
	#region Sickle and Ankh mods
	SikAnLIFmod = real(global.structMods2.Weapon.SickAnkh.LIF);
	SikAnATKmod = real(global.structMods2.Weapon.SickAnkh.ATK);
	SikAnDEFmod = real(global.structMods2.Weapon.SickAnkh.DEF);
	SikAnMAGmod = real(global.structMods2.Weapon.SickAnkh.MAG);
	SikAnACTmod = real(global.structMods2.Weapon.SickAnkh.ACT);
	#endregion
	#region Stormbringer mods
	StormLIFmod = real(global.structMods2.Weapon.Stormbringer.LIF);
	StormATKmod = real(global.structMods2.Weapon.Stormbringer.ATK);
	StormDEFmod = real(global.structMods2.Weapon.Stormbringer.DEF);
	StormMAGmod = real(global.structMods2.Weapon.Stormbringer.MAG);
	StormACTmod = real(global.structMods2.Weapon.Stormbringer.ACT);
	#endregion
	#region Wand and Bell mods
	WaBellLIFmod = real(global.structMods2.Weapon.WandBell.LIF);
	WaBellATKmod = real(global.structMods2.Weapon.WandBell.ATK);
	WaBellDEFmod = real(global.structMods2.Weapon.WandBell.DEF);
	WaBellMAGmod = real(global.structMods2.Weapon.WandBell.MAG);
	WaBellACTmod = real(global.structMods2.Weapon.WandBell.ACT);
	#endregion
	#region Wooden Staff mods
	WoodLIFmod = real(global.structMods2.Weapon.WoodSparrow.LIF);
	WoodATKmod = real(global.structMods2.Weapon.WoodSparrow.ATK);
	WoodDEFmod = real(global.structMods2.Weapon.WoodSparrow.DEF);
	WoodMAGmod = real(global.structMods2.Weapon.WoodSparrow.MAG);
	WoodACTmod = real(global.structMods2.Weapon.WoodSparrow.ACT);
	#endregion
	*/
#endregion