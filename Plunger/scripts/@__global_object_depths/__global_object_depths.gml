// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 402653185; // obj_controller
global.__objectDepths[1] = 0; // obj_player
global.__objectDepths[2] = 0; // obj_zombie
global.__objectDepths[3] = 0; // obj_firePole
global.__objectDepths[4] = 0; // obj_bullet
global.__objectDepths[5] = 0; // obj_bloodsplat
global.__objectDepths[6] = 0; // obj_effect_plunge
global.__objectDepths[7] = 0; // obj_effect_shoot
global.__objectDepths[8] = 0; // obj_effect_dead
global.__objectDepths[9] = 0; // obj_tree
global.__objectDepths[10] = 0; // obj_camera
global.__objectDepths[11] = 0; // obj_ps
global.__objectDepths[12] = 0; // obj_blood
global.__objectDepths[13] = 0; // obj_effect_doorfly
global.__objectDepths[14] = 0; // obj_effect_tv
global.__objectDepths[15] = 0; // obj_shader
global.__objectDepths[16] = 0; // obj_fence
global.__objectDepths[17] = 0; // obj_portopot


global.__objectNames[0] = "obj_controller";
global.__objectNames[1] = "obj_player";
global.__objectNames[2] = "obj_zombie";
global.__objectNames[3] = "obj_firePole";
global.__objectNames[4] = "obj_bullet";
global.__objectNames[5] = "obj_bloodsplat";
global.__objectNames[6] = "obj_effect_plunge";
global.__objectNames[7] = "obj_effect_shoot";
global.__objectNames[8] = "obj_effect_dead";
global.__objectNames[9] = "obj_tree";
global.__objectNames[10] = "obj_camera";
global.__objectNames[11] = "obj_ps";
global.__objectNames[12] = "obj_blood";
global.__objectNames[13] = "obj_effect_doorfly";
global.__objectNames[14] = "obj_effect_tv";
global.__objectNames[15] = "obj_shader";
global.__objectNames[16] = "obj_fence";
global.__objectNames[17] = "obj_portopot";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for