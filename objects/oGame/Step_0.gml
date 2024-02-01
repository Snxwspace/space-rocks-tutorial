/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_enter)) {
	switch room {
		case rStart:
			room_goto(rGame);
			break;
		
		case rWin:
		case rLose:
			game_restart();
			break;
	}
}


if(room == rGame) {
	if (score >= 1000) {
		room_goto(rWin);	
	}

	if(lives <= 0) {
		room_goto(rLose);
	}
}