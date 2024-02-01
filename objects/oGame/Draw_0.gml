/// @description Insert description here
// You can write your code in this editor

var _gameInstructions = @"Score 1,000 points to win.

Up/W: Move forwards
Down/S: Move backwards
Left/A, Right/D: Turn left or right

>> Press enter to start <<"

switch(room) {
	case rGame:
		draw_text(20, 20, "Score: " + string(score));
		draw_text(20, 40, "Lives: " + string(lives));
		break;
		
	case rStart:
		if(textRotateMax1 != 5 || textRotateMin1 != -5 || textRotatePhase1 != 600) {
			textRotate1 = 0;
			textRotateMax1 = 5;
			textRotateMin1 = -5;
			textRotatePhase1 = 600;
			textRotateFrame1 = 0;
		}
		
		// Update the rotation variable
		textRotate1 += textRotateMax1 * cos(pi*textRotateFrame1/(textRotatePhase1/2)) * pi/(textRotatePhase1/2);
		textRotateFrame1 += 1;
		
		
		// Draw text
		var _c1 = $FEEC8E;
		var _c2 = $FFA58F;
		var _c3 = $FFA3AE;
		
		draw_set_halign(fa_center)
		draw_text_transformed_color(
			room_width/2, room_height/4, "SPACE ROCKS",
			3, 3, textRotate1, _c1, _c2, _c2, _c3, 1
		);
		
		draw_text(room_width/2, room_height/2, _gameInstructions);
		
		draw_set_halign(fa_left)
		break;
	
	case rWin:
		
		if(textRotateMax1 != 3 || textRotateMin1 != -3 || textRotatePhase1 != 200) {
			textRotate1 = 0;
			textRotateMax1 = 3;
			textRotateMin1 = -3;
			textRotatePhase1 = 200;
			textRotateFrame1 = 0;
		}
		
		// Update the rotation variable
		textRotate1 += textRotateMax1 * cos(pi*textRotateFrame1/(textRotatePhase1/2)) * pi/(textRotatePhase1/2);
		textRotateFrame1 += 1;
		
		
		// Draw text
		var _c1 = $C2E600;
		var _c2 = $74E600;
		var _c3 = $27E600;
		
		draw_set_halign(fa_center)
		draw_text_transformed_color(
			room_width/2, 1.5*room_height/4, "YOU WIN!",
			3, 3, textRotate1, _c1, _c2, _c2, _c3, 1
		);
		
		draw_text(room_width/2, 2.5*room_height/4, "Press ENTER to restart!");
		
		draw_set_halign(fa_left)
		break;
	
	case rLose:
		
		
		if(textRotateMax1 != 3 || textRotateMin1 != -3 || textRotatePhase1 != 200) {
			textRotate1 = 0;
			textRotateMax1 = 3;
			textRotateMin1 = -3;
			textRotatePhase1 = 200;
			textRotateFrame1 = 0;
		}
		
		// Update the rotation variable
		textRotate1 += textRotateMax1 * cos(pi*textRotateFrame1/(textRotatePhase1/2)) * pi/(textRotatePhase1/2);
		textRotateFrame1 += 1;
		
		
		// Draw text
		var _c1 = $5F00FF;
		var _c2 = $0110FF;
		var _c3 = $006AFF;
		
		draw_set_halign(fa_center)
		draw_text_transformed_color(
			room_width/2, room_height/4, "GAME OVER",
			3, 3, textRotate1, _c1, _c2, _c2, _c3, 1
		);
		
		draw_text(room_width/2, room_height/2, "Final score: " + string(score));
		draw_text(room_width/2, 2.5*room_height/4, "Press ENTER to restart!");
		
		draw_set_halign(fa_left)
		break;
}

