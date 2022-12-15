/// @description Insert description here
// You can write your code in this editor

if (ghostCount < ghostMaker)
{
	var struct = { dmg : dmg };
	instance_create_layer(x,y,"VFX",oSKILL_WEAPON_Ghost,struct);
	ghostCount ++;
}
else
{
	if (!instance_exists(oSKILL_WEAPON_Ghost))
	{
		global.hasControl = true;
		instance_destroy();
	}
}