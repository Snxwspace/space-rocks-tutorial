/// @description Insert description here
// You can write your code in this editor

lives -= 1;

with(oGame) {
	alarm[1] = 60;
}

instance_destroy();

repeat(24) {
	instance_create_layer(x, y, "Instances", oDebris);
}
