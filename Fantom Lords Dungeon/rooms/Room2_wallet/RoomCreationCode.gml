randomize();
// check global.lordTokenIDs length
// if false: use global.ascendedLordTokenIDs
// set current lord data to ascended lord
// do not deactivate oAscendedTrait_0 
if(array_length(global.lordTokenIDs) == 0) {
	var current_lord_id = global.ascendedLordTokenIDs[0];
	var current_lord_data = global.ascendedLordTokenData[$ string(current_lord_id)];
	setCurrentLord(current_lord_data);
	//instance_deactivate_object(oAscendedTrait_0);
} else {
	var current_lord_id = global.lordTokenIDs[0];
	var current_lord_data = global.lordTokenData[$ string(current_lord_id)];
	setCurrentLord(current_lord_data);
	instance_deactivate_object(oAscendedTrait_0);
}
