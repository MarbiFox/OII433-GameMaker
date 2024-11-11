/// @description Textbox control

// Begin fade out

page += 1;
textOnDisplay = "";
alarm[0] = 3;

if (page >= array_length(pages)) {
	page = 0;
	global.playerControl = true
	instance_destroy();
	obj_control.alarm[0] = 1
}



//global.playerControl = true
//instance_destroy();



/*page += 1;





textOnDisplay = "";
alarm[0] = 3;

if (page >= array_length(pages)) {
	page = 0;
}
*/


/*
if (fadeMe == 1) {
	
	obj_control.alarm[0] = 1;
		fadeMe = 2;
	
	//page += 1;
	//textOnDisplay = "";
	//alarm[1] = 3;

	/*if (page >= array_length(pages)) {
		//page = 0;
		
	}
	
}*/

/*
//// Old code
// Queue my destruction
alarm[0] = 2;
*/