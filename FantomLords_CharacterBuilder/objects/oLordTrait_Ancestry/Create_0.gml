/// @description Insert description here
// You can write your code in this editor

list_ancestry = ds_list_create();

ds_list_add(list_ancestry, "Base Lord", "Conan", "Dark Elf", "Desert Lord", "Desert Scarred", "Doge", "Flayed",
							"Gatsu", "Geralt Lord", "High Elf", "Pale Cult Doge", "Pale Cultist", "Scarred Lord",
							"Skeleton", "Zombie Lord");
							
#region Base Lord
BaseLIFmod = 0;
BaseATKmod = 0;
BaseDEFmod = 0;
BaseMAGmod = 0;
BaseACTmod = 0;
#endregion
#region Conan
ConanLIFmod = 0;
ConanATKmod = 1;
ConanDEFmod = 0;
ConanMAGmod = 0;
ConanACTmod = 0;
#endregion
#region Dark
DarkLIFmod = 0;
DarkATKmod = 0;
DarkDEFmod = 0;
DarkMAGmod = 0;
DarkACTmod = 1;
#endregion
#region Desert Lord
DesLoLIFmod = 0;
DesLoATKmod = 0;
DesLoDEFmod = 1;
DesLoMAGmod = 0;
DesLoACTmod = 0;
#endregion
#region Desert Scarred
DesScLIFmod = -1;
DesScATKmod = 0;
DesScDEFmod = 2;
DesScMAGmod = 0;
DesScACTmod = 0;
#endregion
#region Doge
DogeLIFmod = 0;
DogeATKmod = 0;
DogeDEFmod = 0;
DogeMAGmod = -1;
DogeACTmod = 2;
#endregion
#region Flayed
FlayLIFmod = -2;
FlayATKmod = 3;
FlayDEFmod = 0;
FlayMAGmod = 0;
FlayACTmod = 0;
#endregion
#region Gatsu
GatsuLIFmod = 1;
GatsuATKmod = 1;
GatsuDEFmod = 1;
GatsuMAGmod = -2;
GatsuACTmod = 0;
#endregion
#region Geralt
GeraltLIFmod = 1;
GeraltATKmod = 2;
GeraltDEFmod = 0;
GeraltMAGmod = -1;
GeraltACTmod = -1;
#endregion
#region High
HighLIFmod = 0;
HighATKmod = 0;
HighDEFmod = 0;
HighMAGmod = 1;
HighACTmod = 0;
#endregion
#region Pale Doge
PaDoLIFmod = 0;
PaDoATKmod = 0;
PaDoDEFmod = 0;
PaDoMAGmod = 2;
PaDoACTmod = -1;
#endregion
#region Pale Cultist
PaCuLIFmod = 1;
PaCuATKmod = 0;
PaCuDEFmod = -1;
PaCuMAGmod = 1;
PaCuACTmod = 0;
#endregion
#region Scarred Lord
ScaLoLIFmod = -1;
ScaLoATKmod = 1;
ScaLoDEFmod = 0;
ScaLoMAGmod = 0;
ScaLoACTmod = 1;
#endregion
#region Skeleton
SkelLIFmod = 3;
SkelATKmod = -1;
SkelDEFmod = -1;
SkelMAGmod = 0;
SkelACTmod = 0;
#endregion
#region Zombie
ZombLIFmod = 3;
ZombATKmod = 0;
ZombDEFmod = 0;
ZombMAGmod = 0;
ZombACTmod = -2;
#endregion