/// @description Insert description here
// You can write your code in this editor

if done = true
{
	
	image_alpha = 0;
	
	if targetLord != noone
	{
		if (targetLord = oLord1)
		{
			if (instance_exists(oLord2))
			{
				oLord2.thisLord_LIF = oLord2.thisLord_LIFmax;
			}
			if (instance_exists(oLord3))
			{
				oLord3.thisLord_LIF = oLord3.thisLord_LIFmax;
			}
			if (instance_exists(oLord4))
			{
				oLord4.thisLord_LIF = oLord4.thisLord_LIFmax;
			}
			targetLord.thisLord_LIF = 0;
		}
		else if (targetLord = oLord2)
		{
			if (instance_exists(oLord1))
			{
				oLord1.thisLord_LIF = oLord1.thisLord_LIFmax;
			}
			if (instance_exists(oLord3))
			{
				oLord3.thisLord_LIF = oLord3.thisLord_LIFmax;
			}
			if (instance_exists(oLord4))
			{
				oLord4.thisLord_LIF = oLord4.thisLord_LIFmax;
			}
			targetLord.thisLord_LIF = 0;
		}
		else if (targetLord = oLord3)
		{
			if (instance_exists(oLord2))
			{
				oLord2.thisLord_LIF = oLord2.thisLord_LIFmax;
			}
			if (instance_exists(oLord1))
			{
				oLord1.thisLord_LIF = oLord1.thisLord_LIFmax;
			}
			if (instance_exists(oLord4))
			{
				oLord4.thisLord_LIF = oLord4.thisLord_LIFmax;
			}
			targetLord.thisLord_LIF = 0;
		}
		else if (targetLord = oLord4)
		{
			if (instance_exists(oLord2))
			{
				oLord2.thisLord_LIF = oLord2.thisLord_LIFmax;
			}
			if (instance_exists(oLord3))
			{
				oLord3.thisLord_LIF = oLord3.thisLord_LIFmax;
			}
			if (instance_exists(oLord1))
			{
				oLord1.thisLord_LIF = oLord1.thisLord_LIFmax;
			}
			targetLord.thisLord_LIF = 0;
		}
	}
	
	global.hasControl = true;
	instance_destroy();
}