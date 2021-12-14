/// @description Insert description here
// You can write your code in this editor

classArmor = 0;
classArmorMax = 11;

list_classArmor = ds_list_create();

ds_list_add(list_classArmor, "Ranger Leather Armor", "Assassin Nightly Garments", "Druid Wild Vest",
							 "Plague Doctor Attire", "Warlock Fel Cuirass", "Sorcerer Robe",
							 "Bard Glamour Jacket", "Paladin Plate Armor", "Pyromancer Robe",
							 "Necromancer Bone Armor", "Eldritch Knight Mithral Chainmail",
							 "Oathbreaker Cursed Armor");

#region Ranger mods
RangLIFmod = -2;
RangATKmod = -2;
RangDEFmod = -2;
RangMAGmod = -2;
RangACTmod = +8;
#endregion
#region Assassin mods
AssaLIFmod = -4;
AssaATKmod = +4;
AssaDEFmod = -4;
AssaMAGmod = -4;
AssaACTmod = +8;
#endregion
#region Druid mods
DruiLIFmod = 0;
DruiATKmod = -2;
DruiDEFmod = 0;
DruiMAGmod = +2;
DruiACTmod = 0;
#endregion
#region Doctor mods
DoctLIFmod = -2;
DoctATKmod = -4;
DoctDEFmod = -2;
DoctMAGmod = +6;
DoctACTmod = +2;
#endregion
#region Warlock mods
WarlLIFmod = -2;
WarlATKmod = -4;
WarlDEFmod = 0;
WarlMAGmod = +8;
WarlACTmod = -2;
#endregion
#region Sorcerer mods
SorcLIFmod = -4;
SorcATKmod = -6;
SorcDEFmod = -4;
SorcMAGmod = +16;
SorcACTmod = -2;
#endregion
#region Bard mods
BardLIFmod = -2;
BardATKmod = -4;
BardDEFmod = 0;
BardMAGmod = +2;
BardACTmod = +4;
#endregion
#region Paladin mods
PalaLIFmod = +4;
PalaATKmod = 0;
PalaDEFmod = +4;
PalaMAGmod = -2;
PalaACTmod = -6;
#endregion
#region Pyromancer mods
PyroLIFmod = -2;
PyroATKmod = -6;
PyroDEFmod = -2;
PyroMAGmod = +12;
PyroACTmod = -2;
#endregion
#region Necromancer mods
NecrLIFmod = 0;
NecrATKmod = -4;
NecrDEFmod = 0;
NecrMAGmod = +6;
NecrACTmod = -2;
#endregion
#region Knight mods
KnigLIFmod = +2;
KnigATKmod = +4;
KnigDEFmod = +2;
KnigMAGmod = -4;
KnigACTmod = -4;
#endregion
#region Oathbreaker mods
OathLIFmod = 0;
OathATKmod = +10;
OathDEFmod = -2;
OathMAGmod = -4;
OathACTmod = -4;
#endregion