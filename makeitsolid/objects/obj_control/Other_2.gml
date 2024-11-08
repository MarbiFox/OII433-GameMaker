/// @description Setup and variables
global.question_map = scr_read_json("question_data.json")

// Game variables
global.playerControl = true;

global.gameOver = false;
global.gameStart = false;

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