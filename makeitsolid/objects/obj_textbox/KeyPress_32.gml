/// @description Textbox control

// Begin fade out
if (fadeMe == 1) {
	if (roomToSet != noone && roomToSet != undefined){
		room_goto(roomToSet)
	}
	fadeMe = 2;
}

/*
//// Old code
// Queue my destruction
alarm[0] = 2;
*/