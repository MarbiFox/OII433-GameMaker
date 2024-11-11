// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playSequence(_seqToPlay){

	// Set Sequence to centre of Camera view
	var _camX = camera_get_view_x(view_camera[0]);
	var _camY = camera_get_view_y(view_camera[0]);
	layer_sequence_create("Cutscenes",_camX,_camY,_seqToPlay);
	layer_depth("Cutscenes",-10000);
	
	
	// Make sure our Sequence doesn't already exist
}