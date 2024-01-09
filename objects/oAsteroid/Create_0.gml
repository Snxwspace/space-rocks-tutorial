/// @description Insert description here
// You can write your code in this editor

sprite_index = choose(
	sAsteroidLarge, sAsteroidMedium, sAsteroidSmall
);

direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);

var _rolls = [];

repeat(5) {
	array_push(_rolls, random_range(0.15, 0.25));
}


var _sum = 0;
for(var i = 0; i < array_length(_rolls); i++) {
	_sum += _rolls[i];
}

speed = _sum


rotationSpeed = 0

repeat(10) {
	rotationSpeed += random_range(-0.5,0.5)
}