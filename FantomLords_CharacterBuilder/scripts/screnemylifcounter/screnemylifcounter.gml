// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrEnemyLIFcounter(){
	
	LIFpercentage = (thisLIF/thisLIFmax) * 100;
	
	if LIFpercentage >= 100
	{
		status = "Uninjured";
		statusColor = c_lime;
	}
	else if LIFpercentage < 100 && LIFpercentage >= 75
	{
		status = "Barely wounded";
		statusColor = c_green;
	}
	else if LIFpercentage < 75 && LIFpercentage >= 50
	{
		status = "Wounded";
		statusColor = c_yellow;
	}
	else if LIFpercentage < 50 && LIFpercentage >= 25
	{
		status = "Badly wounded";
		statusColor = c_orange;
	}
	else if LIFpercentage <= 25
	{
		status = "Near death";
		statusColor = c_red;
	}

}