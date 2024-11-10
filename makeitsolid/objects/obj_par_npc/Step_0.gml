/// @description Animation, depth

// Change appearance with state
switch myState {
	case npcState.normal: {
		// Random loop timing
		myText = itemTextNormal
		if (image_speed > 0) {
			if (image_index >= image_number) {
				image_speed = 0;
				alarm[0] = irandom_range(loopRange01,loopRange02);
				}
			}
	}; break;
	case npcState.done: {
		if (doneSprite != noone && sprite_index != doneSprite) {
			sprite_index = doneSprite;
			myText = itemTextDone
			}
		}; break;
	case npcState.bad: {
		if (badSprite != noone && sprite_index != badSprite) {
			sprite_index = badSprite;
			myText = itemTextBad
			}
		}; break;
	}
	
// Depth sorting
depth =-y;


if (global.problem_levels[? myProblem] != noone and global.problem_levels[? myProblem] != undefined){
	mylevel = global.problem_levels[? myProblem] 
}

switch(mylevel){
	case 1:
		myState = npcState.bad
	break;
	case 2:
		myState = npcState.normal
	break;
	case 3:
		myState = npcState.done
	break;
}