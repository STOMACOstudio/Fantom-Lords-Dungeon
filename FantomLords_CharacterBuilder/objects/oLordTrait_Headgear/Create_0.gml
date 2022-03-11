/// @description Insert description here
// You can write your code in this editor

list_headgear = ds_list_create();

ds_list_add(list_headgear, "none", "AssassinHood","Big Blue Hat","Big Red Hat","Cimmerian Helm",
						   "Cosmic Horror Mutation","Full Helm", "Green Hood","Halo", "Jeweled Turban",
						   "Minstrel Hat", "Mithral Tiara", "Pepe Mutation", "Plague Doctor Mask",
						   "Purple Hood", "Tombhead Mutation", "Void Gazer");

#region None
NoneLIFmod = 0;
NoneATKmod = 0;
NoneDEFmod = 0;
NoneMAGmod = 0;
NoneACTmod = 0;
#endregion
#region Assassin Hood mods
AssHLIFmod = 0;
AssHATKmod = 0;
AssHDEFmod = 1;
AssHMAGmod = 0;
AssHACTmod = 1;
#endregion
#region Big Blue Hat
BlueLIFmod = 0;
BlueATKmod = 0;
BlueDEFmod = 1;
BlueMAGmod = 1;
BlueACTmod = 0;
#endregion
#region Big Red Hat
RedHLIFmod = 0;
RedHATKmod = 1;
RedHDEFmod = 0;
RedHMAGmod = 1;
RedHACTmod = 0;
#endregion
#region Cimmerian mods
CimmeLIFmod = 0;
CimmeATKmod = 0;
CimmeDEFmod = 3;
CimmeMAGmod = -1;
CimmeACTmod = 0;
#endregion
#region Cosmic Horror mods
CosmLIFmod = 4;
CosmATKmod = 0;
CosmDEFmod = -1;
CosmMAGmod = 0;
CosmACTmod = -1;
#endregion
#region Full Helm mods
FullLIFmod = 0;
FullATKmod = 0;
FullDEFmod = 3;
FullMAGmod = 0;
FullACTmod = -1;
#endregion
#region Green Hood mods
GreenLIFmod = 1;
GreenATKmod = 0;
GreenDEFmod = 1;
GreenMAGmod = 0;
GreenACTmod = 0;
#endregion
#region Halo mods
HaloLIFmod = 2;
HaloATKmod = 0;
HaloDEFmod = 0;
HaloMAGmod = 0;
HaloACTmod = 0;
#endregion
#region Jeweled Turban mods
TurbLIFmod = 0;
TurbATKmod = -1;
TurbDEFmod = 1;
TurbMAGmod = 2;
TurbACTmod = 0;
#endregion
#region Minstrel Hat mods
MinsLIFmod = 1;
MinsATKmod = 0;
MinsDEFmod = -1;
MinsMAGmod = 1;
MinsACTmod = 1;
#endregion
#region Mithral Tiara mods
TiarLIFmod = 0;
TiarATKmod = 0;
TiarDEFmod = 0;
TiarMAGmod = 2;
TiarACTmod = 0;
#endregion
#region Pepe Mutation mods
PepeLIFmod = 0;
PepeATKmod = 0;
PepeDEFmod = 0;
PepeMAGmod = 0;
PepeACTmod = 2;
#endregion
#region Plague Doctor mods
PlagLIFmod = 1;
PlagATKmod = 0;
PlagDEFmod = 0;
PlagMAGmod = 1;
PlagACTmod = 0;
#endregion
#region Purple Hood mods
PurpLIFmod = 0;
PurpATKmod = -1;
PurpDEFmod = 1;
PurpMAGmod = 1;
PurpACTmod = 1;
#endregion
#region Tombhead mods
TombLIFmod = 2;
TombATKmod = 0;
TombDEFmod = 1;
TombMAGmod = 0;
TombACTmod = -1;
#endregion
#region Void Gazer mods
VoidLIFmod = 0;
VoidATKmod = 0;
VoidDEFmod = 0;
VoidMAGmod = 1;
VoidACTmod = 1;
#endregion

#region edit
/*
#region None
NoneLIFmod = real(global.structMods.Headgear.none.LIF);
NoneATKmod = real(global.structMods.Headgear.none.ATK);
NoneDEFmod = real(global.structMods.Headgear.none.DEF)
NoneMAGmod = real(global.structMods.Headgear.none.MAG)
NoneACTmod = real(global.structMods.Headgear.none.ACT)
#endregion
#region Assassin Hood mods
AssHLIFmod = real(global.structMods.Headgear.AssassinHood.LIF);
AssHATKmod = real(global.structMods.Headgear.AssassinHood.ATK);
AssHDEFmod = real(global.structMods.Headgear.AssassinHood.DEF);
AssHMAGmod = real(global.structMods.Headgear.AssassinHood.MAG);
AssHACTmod = real(global.structMods.Headgear.AssassinHood.ACT);
#endregion
#region Big Blue Hat
BlueLIFmod = real(global.structMods.Headgear.BigBlueHat.LIF);
BlueATKmod = real(global.structMods.Headgear.BigBlueHat.ATK);
BlueDEFmod = real(global.structMods.Headgear.BigBlueHat.DEF);
BlueMAGmod = real(global.structMods.Headgear.BigBlueHat.MAG);
BlueACTmod = real(global.structMods.Headgear.BigBlueHat.ACT);
#endregion
#region Big Red Hat
RedHLIFmod = real(global.structMods.Headgear.BigRedHat.LIF);
RedHATKmod = real(global.structMods.Headgear.BigRedHat.ATK);
RedHDEFmod = real(global.structMods.Headgear.BigRedHat.DEF);
RedHMAGmod = real(global.structMods.Headgear.BigRedHat.MAG);
RedHACTmod = real(global.structMods.Headgear.BigRedHat.ACT);
#endregion
#region Cimmerian mods
CimmeLIFmod = real(global.structMods.Headgear.CimmerianHelm.LIF);
CimmeATKmod = real(global.structMods.Headgear.CimmerianHelm.ATK);
CimmeDEFmod = real(global.structMods.Headgear.CimmerianHelm.DEF);
CimmeMAGmod = real(global.structMods.Headgear.CimmerianHelm.MAG);
CimmeACTmod = real(global.structMods.Headgear.CimmerianHelm.ACT);
#endregion
#region Cosmic Horror mods
CosmLIFmod = real(global.structMods.Headgear.CosmicHorror.LIF);
CosmATKmod = real(global.structMods.Headgear.CosmicHorror.ATK);
CosmDEFmod = real(global.structMods.Headgear.CosmicHorror.DEF);
CosmMAGmod = real(global.structMods.Headgear.CosmicHorror.MAG);
CosmACTmod = real(global.structMods.Headgear.CosmicHorror.ACT);
#endregion
#region Full Helm mods
FullLIFmod = real(global.structMods.Headgear.FullHelm.LIF);
FullATKmod = real(global.structMods.Headgear.FullHelm.ATK);
FullDEFmod = real(global.structMods.Headgear.FullHelm.DEF);
FullMAGmod = real(global.structMods.Headgear.FullHelm.MAG);
FullACTmod = real(global.structMods.Headgear.FullHelm.ACT);
#endregion
#region Green Hood mods
GreenLIFmod = real(global.structMods.Headgear.GreenHood.LIF);
GreenATKmod = real(global.structMods.Headgear.GreenHood.ATK);
GreenDEFmod = real(global.structMods.Headgear.GreenHood.DEF);
GreenMAGmod = real(global.structMods.Headgear.GreenHood.MAG);
GreenACTmod = real(global.structMods.Headgear.GreenHood.ACT);
#endregion
#region Halo mods
HaloLIFmod = real(global.structMods.Headgear.Halo.LIF);
HaloATKmod = real(global.structMods.Headgear.Halo.ATK);
HaloDEFmod = real(global.structMods.Headgear.Halo.DEF);
HaloMAGmod = real(global.structMods.Headgear.Halo.MAG);
HaloACTmod = real(global.structMods.Headgear.Halo.ACT);
#endregion
#region Jeweled Turban mods
TurbLIFmod = real(global.structMods.Headgear.JeweledTurban.LIF);
TurbATKmod = real(global.structMods.Headgear.JeweledTurban.ATK);
TurbDEFmod = real(global.structMods.Headgear.JeweledTurban.DEF);
TurbMAGmod = real(global.structMods.Headgear.JeweledTurban.MAG);
TurbACTmod = real(global.structMods.Headgear.JeweledTurban.ACT);
#endregion
#region Minstrel Hat mods
MinsLIFmod = real(global.structMods.Headgear.MinstrelHat.LIF);
MinsATKmod = real(global.structMods.Headgear.MinstrelHat.ATK);
MinsDEFmod = real(global.structMods.Headgear.MinstrelHat.DEF);
MinsMAGmod = real(global.structMods.Headgear.MinstrelHat.MAG);
MinsACTmod = real(global.structMods.Headgear.MinstrelHat.ACT);
#endregion
#region Mithral Tiara mods
TiarLIFmod = real(global.structMods.Headgear.MithralTiara.LIF);
TiarATKmod = real(global.structMods.Headgear.MithralTiara.ATK);
TiarDEFmod = real(global.structMods.Headgear.MithralTiara.DEF);
TiarMAGmod = real(global.structMods.Headgear.MithralTiara.MAG);
TiarACTmod = real(global.structMods.Headgear.MithralTiara.ACT);
#endregion
#region Pepe Mutation mods
PepeLIFmod = real(global.structMods.Headgear.PepeMutation.LIF);
PepeATKmod = real(global.structMods.Headgear.PepeMutation.ATK);
PepeDEFmod = real(global.structMods.Headgear.PepeMutation.DEF);
PepeMAGmod = real(global.structMods.Headgear.PepeMutation.MAG);
PepeACTmod = real(global.structMods.Headgear.PepeMutation.ACT);
#endregion
#region Plague Doctor mods
PlagLIFmod = real(global.structMods.Headgear.PlagueDoctor.LIF);
PlagATKmod = real(global.structMods.Headgear.PlagueDoctor.ATK);
PlagDEFmod = real(global.structMods.Headgear.PlagueDoctor.DEF);
PlagMAGmod = real(global.structMods.Headgear.PlagueDoctor.MAG);
PlagACTmod = real(global.structMods.Headgear.PlagueDoctor.ACT);
#endregion
#region Purple Hood mods
PurpLIFmod = real(global.structMods.Headgear.PurpleHood.LIF);
PurpATKmod = real(global.structMods.Headgear.PurpleHood.ATK);
PurpDEFmod = real(global.structMods.Headgear.PurpleHood.DEF);
PurpMAGmod = real(global.structMods.Headgear.PurpleHood.MAG);
PurpACTmod = real(global.structMods.Headgear.PurpleHood.ACT);
#endregion
#region Tombhead mods
TombLIFmod = real(global.structMods.Headgear.Tombhead.LIF);
TombATKmod = real(global.structMods.Headgear.Tombhead.ATK);
TombDEFmod = real(global.structMods.Headgear.Tombhead.DEF);
TombMAGmod = real(global.structMods.Headgear.Tombhead.MAG);
TombACTmod = real(global.structMods.Headgear.Tombhead.ACT);
#endregion
#region Void Gazer mods
VoidLIFmod = real(global.structMods.Headgear.VoidGazer.LIF);
VoidATKmod = real(global.structMods.Headgear.VoidGazer.ATK);
VoidDEFmod = real(global.structMods.Headgear.VoidGazer.DEF);
VoidMAGmod = real(global.structMods.Headgear.VoidGazer.MAG);
VoidACTmod = real(global.structMods.Headgear.VoidGazer.ACT);
#endregion
*/
#endregion