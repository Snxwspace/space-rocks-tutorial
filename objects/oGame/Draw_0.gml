/// @description Insert description here
// You can write your code in this editor

switch(room) {
	case rGame:
		draw_text(20, 20, "Score: " + string(score));
		draw_text(20, 40, "Lives: " + string(score));
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
		textRotate1 += textRotateMax1 * cos(pi*textRotateFrame1/(textRotatePhase1/2)) * pi/(textRotatePhase1/2)
		textRotateFrame1 += 1
		
		
		// Draw text
		var _c1 = $FEEC8E
		var _c2 = $FFA58F
		var _c3 = $FFA3AE
		
		draw_set_halign(fa_center)
		draw_text_transformed_color(
			room_width/2, room_height/4, "SPACE ROCKS",
			3, 3, textRotate1, _c1, _c2, _c2, _c3, 1
		)
		draw_set_halign(fa_left)
		break;
	
	case rWin:
		break;
	
	case rLose:
		break;
}

