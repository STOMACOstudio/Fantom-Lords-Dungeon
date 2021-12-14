/// @description Insert description here
// You can write your code in this editor

#region class modes
if classArmor = 0 //none
{
	global.modLIF = 0;
	global.modATK = 0;
	global.modDEF = 0;
	global.modMAG = 0;
	global.modACT = 0;
}
else if classArmor = 1 //ranger
{
	global.modLIF = RangLIFmod;
	global.modATK = RangATKmod;
	global.modDEF = RangDEFmod;
	global.modMAG = RangMAGmod;
	global.modACT = RangACTmod;
}
else if classArmor = 2 //assassin
{
	global.modLIF = AssaLIFmod;
	global.modATK = AssaATKmod;
	global.modDEF = AssaDEFmod;
	global.modMAG = AssaMAGmod;
	global.modACT = AssaACTmod;
}
else if classArmor = 3 //druid
{
	global.modLIF = DruiLIFmod;
	global.modATK = DruiATKmod;
	global.modDEF = DruiDEFmod;
	global.modMAG = DruiMAGmod;
	global.modACT = DruiACTmod;
}
else if classArmor = 4 //doctor
{
	global.modLIF = DoctLIFmod;
	global.modATK = DoctATKmod;
	global.modDEF = DoctDEFmod;
	global.modMAG = DoctMAGmod;
	global.modACT = DoctACTmod;
}
else if classArmor = 5 //warlock
{
	global.modLIF = WarlLIFmod;
	global.modATK = WarlATKmod;
	global.modDEF = WarlDEFmod;
	global.modMAG = WarlMAGmod;
	global.modACT = WarlACTmod;
}
else if classArmor = 6 //sorcerer
{
	global.modLIF = SorcLIFmod;
	global.modATK = SorcATKmod;
	global.modDEF = SorcDEFmod;
	global.modMAG = SorcMAGmod;
	global.modACT = SorcACTmod;
}
else if classArmor = 7 //bard
{
	global.modLIF = BardLIFmod;
	global.modATK = BardATKmod;
	global.modDEF = BardDEFmod;
	global.modMAG = BardMAGmod;
	global.modACT = BardACTmod;
}
else if classArmor = 8 //paladin
{
	global.modLIF = PalaLIFmod;
	global.modATK = PalaATKmod;
	global.modDEF = PalaDEFmod;
	global.modMAG = PalaMAGmod;
	global.modACT = PalaACTmod;
}
else if classArmor = 9 //pyromancer
{
	global.modLIF = PyroLIFmod;
	global.modATK = PyroATKmod;
	global.modDEF = PyroDEFmod;
	global.modMAG = PyroMAGmod;
	global.modACT = PyroACTmod;
}
else if classArmor = 10 //necromancer
{
	global.modLIF = NecrLIFmod;
	global.modATK = NecrATKmod;
	global.modDEF = NecrDEFmod;
	global.modMAG = NecrMAGmod;
	global.modACT = NecrACTmod;
}
else if classArmor = 11 //knight
{
	global.modLIF = KnigLIFmod;
	global.modATK = KnigATKmod;
	global.modDEF = KnigDEFmod;
	global.modMAG = KnigMAGmod;
	global.modACT = KnigACTmod;
}
else if classArmor = 12 //oathbreaker
{
	global.modLIF = OathLIFmod;
	global.modATK = OathATKmod;
	global.modDEF = OathDEFmod;
	global.modMAG = OathMAGmod;
	global.modACT = OathACTmod;
}
#endregion