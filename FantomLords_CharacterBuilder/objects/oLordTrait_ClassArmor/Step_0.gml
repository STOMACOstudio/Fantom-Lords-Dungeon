/// @description Insert description here
// You can write your code in this editor

image_index = global.classArmor;

/*if classArmor = 0 //none
{
	global.modLIF = 0;
	global.modATK = 0;
	global.modDEF = 0;
	global.modMAG = 0;
	global.modACT = 0;
}*/

if global.classArmor = 0 //ranger
{
	global.modLIF = RangLIFmod;
	global.modATK = RangATKmod;
	global.modDEF = RangDEFmod;
	global.modMAG = RangMAGmod;
	global.modACT = RangACTmod;
}
else if global.classArmor = 1 //assassin
{
	global.modLIFarmor = AssaLIFmod;
	global.modATKarmor = AssaATKmod;
	global.modDEFarmor = AssaDEFmod;
	global.modMAGarmor = AssaMAGmod;
	global.modACTarmor = AssaACTmod;
}
else if global.classArmor = 2 //druid
{
	global.modLIFarmor = DruiLIFmod;
	global.modATKarmor = DruiATKmod;
	global.modDEFarmor = DruiDEFmod;
	global.modMAGarmor = DruiMAGmod;
	global.modACTarmor = DruiACTmod;
}
else if global.classArmor = 3 //doctor
{
	global.modLIFarmor = DoctLIFmod;
	global.modATKarmor = DoctATKmod;
	global.modDEFarmor = DoctDEFmod;
	global.modMAGarmor = DoctMAGmod;
	global.modACTarmor = DoctACTmod;
}
else if global.classArmor = 4 //warlock
{
	global.modLIFarmor = WarlLIFmod;
	global.modATKarmor = WarlATKmod;
	global.modDEFarmor = WarlDEFmod;
	global.modMAGarmor = WarlMAGmod;
	global.modACTarmor = WarlACTmod;
}
else if global.classArmor = 5 //sorcerer
{
	global.modLIFarmor = SorcLIFmod;
	global.modATKarmor = SorcATKmod;
	global.modDEFarmor = SorcDEFmod;
	global.modMAGarmor = SorcMAGmod;
	global.modACTarmor = SorcACTmod;
}
else if global.classArmor = 6 //bard
{
	global.modLIFarmor = BardLIFmod;
	global.modATKarmor = BardATKmod;
	global.modDEFarmor = BardDEFmod;
	global.modMAGarmor = BardMAGmod;
	global.modACTarmor = BardACTmod;
}
else if global.classArmor = 7 //paladin
{
	global.modLIFarmor = PalaLIFmod;
	global.modATKarmor = PalaATKmod;
	global.modDEFarmor = PalaDEFmod;
	global.modMAGarmor = PalaMAGmod;
	global.modACTarmor = PalaACTmod;
}
else if global.classArmor = 8 //pyromancer
{
	global.modLIFarmor = PyroLIFmod;
	global.modATKarmor = PyroATKmod;
	global.modDEFarmor = PyroDEFmod;
	global.modMAGarmor = PyroMAGmod;
	global.modACTarmor = PyroACTmod;
}
else if global.classArmor = 9 //necromancer
{
	global.modLIFarmor = NecrLIFmod;
	global.modATKarmor = NecrATKmod;
	global.modDEFarmor = NecrDEFmod;
	global.modMAGarmor = NecrMAGmod;
	global.modACTarmor = NecrACTmod;
}
else if global.classArmor = 10 //knight
{
	global.modLIFarmor = KnigLIFmod;
	global.modATKarmor = KnigATKmod;
	global.modDEFarmor = KnigDEFmod;
	global.modMAGarmor = KnigMAGmod;
	global.modACTarmor = KnigACTmod;
}
else if global.classArmor = 11 //oathbreaker
{
	global.modLIFarmor = OathLIFmod;
	global.modATKarmor = OathATKmod;
	global.modDEFarmor = OathDEFmod;
	global.modMAGarmor = OathMAGmod;
	global.modACTarmor = OathACTmod;
}