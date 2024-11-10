/// @description Setup and variables
global.question_map = scr_read_json("question_data.json")

// Game variables
global.playerControl = true;
global.gameOver = false;
global.gameStart = false;

global.problem_levels = ds_map_create()
global.problem_levels[? "srp"] = 1
global.problem_levels[? "ocp"] = 1
global.problem_levels[? "lsp"] = 1

// Player states
enum playerState {
	idle,
	walking,
	pickingUp,
	carrying,
	carryIdle,
	puttingDown,
	}
	
// Item states
enum itemState {
	idle,
	taken,
	used,
	puttingBack,
	}
	
// Sequence states
enum seqState {
	notPlaying,
	waiting,
	playing,
	finished,
	}
// Sequence variables
sequenceState = seqState.notPlaying;
curSeqLayer = noone;
curSeq = noone;

// NPC states
enum npcState {
	normal,
	done,
	}