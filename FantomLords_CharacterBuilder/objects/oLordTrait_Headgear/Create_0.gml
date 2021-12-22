/// @description Insert description here
// You can write your code in this editor

list_headgear = ds_list_create();

ds_list_add(list_headgear, "none", "AssassinHood","Big Blue Hat","Big Red Hat","Cimmerian Helm",
						   "Cosmic Horror Mutation","Full Helm", "Green Hood","Halo", "Jeweled Turban",
						   "Minstrel Hat", "Mithral Tiara", "Pepe Mutation", "Plague Doctor Mask",
						   "Purple Hood", "Tombhead Mutation", "Void Gazer");
						   
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