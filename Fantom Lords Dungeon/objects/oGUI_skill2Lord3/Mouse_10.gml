/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord3active && instance_exists(oLord3)
{
	global.currentStatusColor = c_white;
	global.currentSelectedStatus = "Class Skill";
	
	if (oLord3.thisLord_ascend)
	{
		if oLord3.thisLord_skillClassArmor = 0
		{
			global.currentSelectedName = "Path";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Reveal the";
			global.currentSelectedDescription2 = "next door on";
			global.currentSelectedDescription3 = "the map";
		}
		else if oLord3.thisLord_skillClassArmor = 1
		{
			global.currentSelectedName = "Bless";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Heals and";
			global.currentSelectedDescription2 = "rise DEF and";
			global.currentSelectedDescription3 = "ATK of target";
		}
		else if oLord3.thisLord_skillClassArmor = 2
		{
			global.currentSelectedName = "Clash";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Deals a high";
			global.currentSelectedDescription2 = "ATK damage";
			global.currentSelectedDescription3 = "with recoil";
		}
		else if oLord3.thisLord_skillClassArmor = 3
		{
			global.currentSelectedName = "Life Breath";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Heals self";
			global.currentSelectedDescription2 = "or target";
			global.currentSelectedDescription3 = "";
		}
		else if oLord3.thisLord_skillClassArmor = 4
		{
			global.currentSelectedName = "Crystalize";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Immobilize";
			global.currentSelectedDescription2 = "the target but";
			global.currentSelectedDescription3 = "rise its DEF";
		}
		else if oLord3.thisLord_skillClassArmor = 5
		{
			global.currentSelectedName = "Honor";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Suicide for";
			global.currentSelectedDescription2 = "healing and";
			global.currentSelectedDescription3 = "reviving allies";
		}
		else if oLord3.thisLord_skillClassArmor = 6
		{
			global.currentSelectedName = "Beam";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Powerful MAG";
			global.currentSelectedDescription2 = "piercing damage";
			global.currentSelectedDescription3 = "";
		}
		else if oLord3.thisLord_skillClassArmor = 7
		{
			global.currentSelectedName = "Drain";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Deals MAG";
			global.currentSelectedDescription2 = "damage and";
			global.currentSelectedDescription3 = "heals back";
		}
	}
	else
	{
		if oLord3.thisLord_skillClassArmor = 0
		{
			global.currentSelectedName = "Disarm";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Disable a";
			global.currentSelectedDescription2 = "nearby trap";
			global.currentSelectedDescription3 = "";
		}
		else if oLord3.thisLord_skillClassArmor = 1
		{
			global.currentSelectedName = "Shadow";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Can't be";
			global.currentSelectedDescription2 = "targeted for";
			global.currentSelectedDescription3 = "three turns";
		}
		else if oLord3.thisLord_skillClassArmor = 2
		{
			global.currentSelectedName = "Sunbathe";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Rejuvenate self";
			global.currentSelectedDescription2 = "using MAG";
			global.currentSelectedDescription3 = "stat";
		}
		else if oLord3.thisLord_skillClassArmor = 3
		{
			global.currentSelectedName = "Suture";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Heals close";
			global.currentSelectedDescription2 = "ally using";
			global.currentSelectedDescription3 = "MAG stat";
		}
		else if oLord3.thisLord_skillClassArmor = 4
		{
			global.currentSelectedName = "Weaken";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Reduce enemy";
			global.currentSelectedDescription2 = "ATK, DEF and";
			global.currentSelectedDescription3 = "MAG stat";
		}
		else if oLord3.thisLord_skillClassArmor = 5
		{
			global.currentSelectedName = "Telport";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Move the lord";
			global.currentSelectedDescription2 = "instantly to an";
			global.currentSelectedDescription3 = "empty tile";
		}
		else if oLord3.thisLord_skillClassArmor = 6
		{
			global.currentSelectedName = "Lullaby";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Can inflict";
			global.currentSelectedDescription2 = "SLEEP to all";
			global.currentSelectedDescription3 = "enemies";
		}
		else if oLord3.thisLord_skillClassArmor = 7
		{
			global.currentSelectedName = "Burden";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Increase";
			global.currentSelectedDescription2 = "target's DEF";
			global.currentSelectedDescription3 = "stat";
		}
		else if oLord3.thisLord_skillClassArmor = 8
		{
			global.currentSelectedName = "Burn";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Deals MAG";
			global.currentSelectedDescription2 = "damage around";
			global.currentSelectedDescription3 = "the lord";
		}
		else if oLord3.thisLord_skillClassArmor = 9
		{
			global.currentSelectedName = "Revive";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Revives a Lord";
			global.currentSelectedDescription2 = "as a weak";
			global.currentSelectedDescription3 = "zombie";
		}
		else if oLord3.thisLord_skillClassArmor = 10
		{
			global.currentSelectedName = "Battlecry";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Raise self";
			global.currentSelectedDescription2 = "ATK stat";
			global.currentSelectedDescription3 = "3 turns";
		}
		else if oLord3.thisLord_skillClassArmor = 11
		{
			global.currentSelectedName = "Stun";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Can stun";
			global.currentSelectedDescription2 = "enemy for";
			global.currentSelectedDescription3 = "one turn";
		}
	}
}