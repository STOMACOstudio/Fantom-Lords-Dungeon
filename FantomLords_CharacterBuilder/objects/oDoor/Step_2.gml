/// @description Insert description here
// You can write your code in this editor

if nextRoom <= 0
{
	if oLordStats.lord1active instance_activate_object(oLord1);
	if oLordStats.lord2active instance_activate_object(oLord2);
	if oLordStats.lord3active instance_activate_object(oLord3);
	if oLordStats.lord4active instance_activate_object(oLord4);
	instance_destroy(oGUI_waiting);
	room_restart();
}