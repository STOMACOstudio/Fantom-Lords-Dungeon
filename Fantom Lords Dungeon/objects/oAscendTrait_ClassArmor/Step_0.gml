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

if global.classArmor = 0 //pathfinder
{
	global.modLIFarmor = PathLIFmod;
	global.modATKarmor = PathATKmod;
	global.modDEFarmor = PathDEFmod;
	global.modMAGarmor = PathMAGmod;
	global.modACTarmor = PathACTmod;
	global.classArmorSkill = "Path";
}
else if global.classArmor = 1 //dragonslayer
{
	global.modLIFarmor = DragLIFmod;
	global.modATKarmor = DragATKmod;
	global.modDEFarmor = DragDEFmod;
	global.modMAGarmor = DragMAGmod;
	global.modACTarmor = DragACTmod;
	global.classArmorSkill = "Bless";
}
else if global.classArmor = 2 //champion
{
	global.modLIFarmor = ChampLIFmod;
	global.modATKarmor = ChampATKmod;
	global.modDEFarmor = ChampDEFmod;
	global.modMAGarmor = ChampMAGmod;
	global.modACTarmor = ChampACTmod;
	global.classArmorSkill = "Clash";
}
else if global.classArmor = 3 //stormcaller
{
	global.modLIFarmor = StrmLIFmod;
	global.modATKarmor = StrmATKmod;
	global.modDEFarmor = StrmDEFmod;
	global.modMAGarmor = StrmMAGmod;
	global.modACTarmor = StrmACTmod;
	global.classArmorSkill = "Life Breath";
}
else if global.classArmor = 4 //seer
{
	global.modLIFarmor = SeerLIFmod;
	global.modATKarmor = SeerATKmod;
	global.modDEFarmor = SeerDEFmod;
	global.modMAGarmor = SeerMAGmod;
	global.modACTarmor = SeerACTmod;
	global.classArmorSkill = "Crystalize";
}
else if global.classArmor = 5 //kensai
{
	global.modLIFarmor = KensLIFmod;
	global.modATKarmor = KensATKmod;
	global.modDEFarmor = KensDEFmod;
	global.modMAGarmor = KensMAGmod;
	global.modACTarmor = KensACTmod;
	global.classArmorSkill = "Honor";
}
else if global.classArmor = 6 //magus
{
	global.modLIFarmor = MaguLIFmod;
	global.modATKarmor = MaguATKmod;
	global.modDEFarmor = MaguDEFmod;
	global.modMAGarmor = MaguMAGmod;
	global.modACTarmor = MaguACTmod;
	global.classArmorSkill = "Beam";
}
else if global.classArmor = 7 //sorcerer
{
	global.modLIFarmor = SrcrLIFmod;
	global.modATKarmor = SrcrATKmod;
	global.modDEFarmor = SrcrDEFmod;
	global.modMAGarmor = SrcrMAGmod;
	global.modACTarmor = SrcrACTmod;
	global.classArmorSkill = "Drain";
}