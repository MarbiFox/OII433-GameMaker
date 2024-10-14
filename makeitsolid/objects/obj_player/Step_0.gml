/// @description Player movement, more

// movimiento 
if (global.playerControl == true) {
	moveRight = keyboard_check(ord("D"));
	moveUp = keyboard_check(ord("W"));
	moveLeft = keyboard_check(ord("A"));
	moveDown = keyboard_check(ord("S"));
	}
if (global.playerControl == false) {
	moveRight = 0;
	moveUp = 0;
	moveLeft = 0;
	moveDown = 0;
	}
	
// correr
running = keyboard_check(vk_shift);

// codiciones para correr
if (running == true) {
	// Ramp up
	if (runSpeed < runMax) {
		runSpeed += 2;
		}
	// Start creating dust
	if (startDust == 0) {
		alarm[0] = 2;
		startDust = 1;
		}
	}
// Slow down if no longer running
if (running == false) {
	// Ramp down
	if (runSpeed > 0) {
		runSpeed -= 1;
		}
	startDust = 0;
	}

// calcular movimiento
vx = ((moveRight - moveLeft) * (walkSpeed+runSpeed) * (1-carryLimit));
vy = ((moveDown - moveUp) * (walkSpeed+runSpeed) * (1-carryLimit));

// If Idle
if (vx == 0 && vy == 0) {
	// If I'm not picking up or putting down an item
	if (myState != playerState.pickingUp && myState != playerState.puttingDown) {
		// If we don't have an item
		if (hasItem == noone) {
			myState = playerState.idle;	
			}
		// If we're carrying an item
		else {
			myState = playerState.carryIdle;	
			}
		}
	}

// If moving
if (vx != 0 || vy != 0) {
	if !collision_point(x+vx,y,obj_par_environment,true,true) {
		x += vx;
		}
	if !collision_point(x,y+vy,obj_par_environment,true,true) {
		y += vy;
		}
	
	// Change direction based on movement
	if (vx > 0) {
		dir = 0;
		}
	if (vx < 0) {
		dir = 2;
		}	
	if (vy > 0) {
		dir = 3;
		}
	if (vy < 0) {
		dir = 1;
		}

	// Set state
	// If we don't have an item
	if (hasItem == noone) {		
		myState = playerState.walking;
		}
	// If we're carrying an item
	else {
		myState = playerState.carrying;
		}
		
	// Set my listener if Sequence is playing
	if (instance_exists(obj_control) && obj_control.sequenceState == seqState.playing) {
		var _camX = camera_get_view_x(view_camera[0])+floor(camera_get_view_width(view_camera[0])*0.5);
		var _camY = camera_get_view_y(view_camera[0])+floor(camera_get_view_height(view_camera[0])*0.5);
		
		audio_listener_set_position(0,_camX,_camY,0);
		}
	else {
		// Otherwise, move audio listener with me
		audio_listener_set_position(0,x,y,0);
		}
	}
	
// Check for collision with NPCs
nearbyNPC = collision_rectangle(x-lookRange,y-lookRange,x+lookRange,y+lookRange,obj_par_npc,false,true);

//cerca de un npc
if nearbyNPC {
	
	if (npcPrompt == noone || npcPrompt == undefined) {
		npcPrompt = scr_showPrompt(nearbyNPC,nearbyNPC.x,nearbyNPC.y-450);
		}
	//show_debug_message("obj_player has found an NPC!");
	}

//ya no esta cerca del npc
if !nearbyNPC {
	
	// Get rid of prompt
	scr_dismissPrompt(npcPrompt,0);
	//show_debug_message("obj_player hasn't found anything");
	}
	
/*colicion con items vamos temporalmente descartar esta herramienta
nearbyItem = collision_rectangle(x-lookRange,y-lookRange,x+lookRange,y+lookRange,obj_par_item,false,false);
if (nearbyItem && !nearbyNPC) {
	// Pop up prompt
	if (itemPrompt == noone || itemPrompt == undefined) {
		show_debug_message("obj_player has found an item!");
		itemPrompt = scr_showPrompt(nearbyItem,nearbyItem.x,nearbyItem.y-300);
		}
	}
if (!nearbyItem || nearbyNPC) {
	// Get rid of prompt
	scr_dismissPrompt(itemPrompt,1);
	}
*/ 


/* si el item es tomado
// If picking up an item
if (myState == playerState.pickingUp) {
	if (image_index >= image_number-1) {
		myState = playerState.carrying;
		global.playerControl = true;
		}
	}

// If putting down an item
if (myState == playerState.puttingDown) {
	// Reset weight
	carryLimit = 0;
	// Reset my state once animation finishes
	if (image_index >= image_number-1) {
		myState = playerState.idle;
		global.playerControl = true;
		}
	}
*/
// Auto-choose Sprite based on state and direction
sprite_index = playerSpr[myState][dir];

// Depth sorting
depth =-y;