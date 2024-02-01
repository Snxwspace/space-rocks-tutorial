/// @description Insert description here
// You can write your code in this editor

if(room == rGame) {
	repeat(8) {
		var _xx = choose(
			irandom_range(0, room_width/4),
			irandom_range(3*room_width/4, room_width)
		);
	
		var _yy = choose(
			irandom_range(0, room_height/4),
			irandom_range(3*room_height/4, room_height)
		);
	
		instance_create_layer(_xx, _yy, "Instances", oAsteroid) // I'd add the asteroid special as a 1-5% chance but i dont have time to worry about that
	}
}

alarm[0] = 180