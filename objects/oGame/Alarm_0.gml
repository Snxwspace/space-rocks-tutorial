/// @description Insert description here
// You can write your code in this editor

if(room != rGame) {
	exit;
}

if(choose(0,1) == 0) {
	instance_create_layer(choose(0, room_width), irandom_range(0, room_height), "Instances", oAsteroid)	
} else {
	instance_create_layer(irandom_range(0, room_width), choose(0, room_height), "Instances", oAsteroid)
}

if(score == 0) {
	alarm[0] = 530;
} else {
	alarm[0] = (500/score)+30;
}