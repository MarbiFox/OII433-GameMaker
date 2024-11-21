/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
switch myState {
	case npcState.normal: {
		myText = itemTextNormal
		image_index=0
	}; break;
	case npcState.done: {
		myText = itemTextDone
		doAfter = finish_func 
		image_index=1
		
		}; break;
	case npcState.bad: {
		myText = itemTextBad
		}; break;
	}
	
// Depth sorting
depth =-y;

	
if((global.problem_levels[? "srp"] > 1) and (global.problem_levels[? "ocp"] > 1) and (global.problem_levels[? "lsp"] > 1)){
	myState = npcState.done
}