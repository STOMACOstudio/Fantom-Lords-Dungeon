/// @description Insert description here
// You can write your code in this editor

list_ancestry = ds_list_create();

ds_list_add(list_ancestry, "Base Lord", "Conan", "Dark Elf", "Desert Lord", "Desert Scarred", "Doge", "Flayed",
							"Gatsu", "Geralt Lord", "High Elf", "Pale Cult Doge", "Pale Cultist", "Scarred Lord",
							"Skeleton", "Zombie Lord");

#region Base Lord
BaseLIFmod = real(global.structMods.Ancestry.Base.LIF);
BaseATKmod = real(global.structMods.Ancestry.Base.ATK);
BaseDEFmod = real(global.structMods.Ancestry.Base.DEF);
BaseMAGmod = real(global.structMods.Ancestry.Base.MAG);
BaseACTmod = real(global.structMods.Ancestry.Base.ACT);
#endregion
#region Conan
ConanLIFmod = real(global.structMods.Ancestry.Conan.LIF);
ConanATKmod = real(global.structMods.Ancestry.Conan.ATK);
ConanDEFmod = real(global.structMods.Ancestry.Conan.DEF);
ConanMAGmod = real(global.structMods.Ancestry.Conan.MAG);
ConanACTmod = real(global.structMods.Ancestry.Conan.ACT);
#endregion
#region Dark
DarkLIFmod = real(global.structMods.Ancestry.DarkElf.LIF);
DarkATKmod = real(global.structMods.Ancestry.DarkElf.ATK);
DarkDEFmod = real(global.structMods.Ancestry.DarkElf.DEF);
DarkMAGmod = real(global.structMods.Ancestry.DarkElf.MAG);
DarkACTmod = real(global.structMods.Ancestry.DarkElf.ACT);
#endregion
#region Desert Lord
DesLoLIFmod = real(global.structMods.Ancestry.DesertLord.LIF);
DesLoATKmod = real(global.structMods.Ancestry.DesertLord.ATK);
DesLoDEFmod = real(global.structMods.Ancestry.DesertLord.DEF);
DesLoMAGmod = real(global.structMods.Ancestry.DesertLord.MAG);
DesLoACTmod = real(global.structMods.Ancestry.DesertLord.ACT);
#endregion
#region Desert Scarred
DesScLIFmod = real(global.structMods.Ancestry.DesertScarred.LIF);
DesScATKmod = real(global.structMods.Ancestry.DesertScarred.ATK);
DesScDEFmod = real(global.structMods.Ancestry.DesertScarred.DEF);
DesScMAGmod = real(global.structMods.Ancestry.DesertScarred.MAG);
DesScACTmod = real(global.structMods.Ancestry.DesertScarred.ACT);
#endregion
#region Doge
DogeLIFmod = real(global.structMods.Ancestry.Doge.LIF);
DogeATKmod = real(global.structMods.Ancestry.Doge.ATK);
DogeDEFmod = real(global.structMods.Ancestry.Doge.DEF);
DogeMAGmod = real(global.structMods.Ancestry.Doge.MAG);
DogeACTmod = real(global.structMods.Ancestry.Doge.ACT);
#endregion
#region Flayed
FlayLIFmod = real(global.structMods.Ancestry.Flayed.LIF);
FlayATKmod = real(global.structMods.Ancestry.Flayed.ATK);
FlayDEFmod = real(global.structMods.Ancestry.Flayed.DEF);
FlayMAGmod = real(global.structMods.Ancestry.Flayed.MAG);
FlayACTmod = real(global.structMods.Ancestry.Flayed.ACT);
#endregion
#region Gatsu
GatsuLIFmod = real(global.structMods.Ancestry.Gatsu.LIF);
GatsuATKmod = real(global.structMods.Ancestry.Gatsu.ATK);
GatsuDEFmod = real(global.structMods.Ancestry.Gatsu.DEF);
GatsuMAGmod = real(global.structMods.Ancestry.Gatsu.MAG);
GatsuACTmod = real(global.structMods.Ancestry.Gatsu.ACT);
#endregion
#region Geralt
GeraltLIFmod = real(global.structMods.Ancestry.Geralt.LIF);
GeraltATKmod = real(global.structMods.Ancestry.Geralt.ATK);
GeraltDEFmod = real(global.structMods.Ancestry.Geralt.DEF);
GeraltMAGmod = real(global.structMods.Ancestry.Geralt.MAG);
GeraltACTmod = real(global.structMods.Ancestry.Geralt.ACT);
#endregion
#region High
HighLIFmod = real(global.structMods.Ancestry.HighElf.LIF);
HighATKmod = real(global.structMods.Ancestry.HighElf.ATK);
HighDEFmod = real(global.structMods.Ancestry.HighElf.DEF);
HighMAGmod = real(global.structMods.Ancestry.HighElf.MAG);
HighACTmod = real(global.structMods.Ancestry.HighElf.ACT);
#endregion
#region Pale Doge
PaDoLIFmod = real(global.structMods.Ancestry.PaleCultDoge.LIF);
PaDoATKmod = real(global.structMods.Ancestry.PaleCultDoge.ATK);
PaDoDEFmod = real(global.structMods.Ancestry.PaleCultDoge.DEF);
PaDoMAGmod = real(global.structMods.Ancestry.PaleCultDoge.MAG);
PaDoACTmod = real(global.structMods.Ancestry.PaleCultDoge.ACT);
#endregion
#region Pale Cultist
PaCuLIFmod = real(global.structMods.Ancestry.PaleCultist.LIF);
PaCuATKmod = real(global.structMods.Ancestry.PaleCultist.ATK);
PaCuDEFmod = real(global.structMods.Ancestry.PaleCultist.DEF);
PaCuMAGmod = real(global.structMods.Ancestry.PaleCultist.MAG);
PaCuACTmod = real(global.structMods.Ancestry.PaleCultist.ACT);
#endregion
#region Scarred Lord
ScaLoLIFmod = real(global.structMods.Ancestry.ScarredLord.LIF);
ScaLoATKmod = real(global.structMods.Ancestry.ScarredLord.ATK);
ScaLoDEFmod = real(global.structMods.Ancestry.ScarredLord.DEF);
ScaLoMAGmod = real(global.structMods.Ancestry.ScarredLord.MAG);
ScaLoACTmod = real(global.structMods.Ancestry.ScarredLord.ACT);
#endregion
#region Skeleton
SkelLIFmod = real(global.structMods.Ancestry.Skeleton.LIF);
SkelATKmod = real(global.structMods.Ancestry.Skeleton.ATK);
SkelDEFmod = real(global.structMods.Ancestry.Skeleton.DEF);
SkelMAGmod = real(global.structMods.Ancestry.Skeleton.MAG);
SkelACTmod = real(global.structMods.Ancestry.Skeleton.ACT);
#endregion
#region Zombie
ZombLIFmod = real(global.structMods.Ancestry.ZombieLord.LIF);
ZombATKmod = real(global.structMods.Ancestry.ZombieLord.ATK);
ZombDEFmod = real(global.structMods.Ancestry.ZombieLord.DEF);
ZombMAGmod = real(global.structMods.Ancestry.ZombieLord.MAG);
ZombACTmod = real(global.structMods.Ancestry.ZombieLord.ACT);
#endregion