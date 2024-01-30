/// @description Insert description here
// You can write your code in this editor

score += 10

instance_destroy()

with(other) {
	instance_destroy();
	
	if(sprite_index == sAsteroidLarge) {
		var _inst = instance_create_layer(x, y, "Instances", oAsteroid);
		_inst.sprite_index = sAsteroidMedium;
		
		_inst = instance_create_layer(x, y, "Instances", oAsteroid);
		_inst.sprite_index = sAsteroidMedium;
	} else if(sprite_index == sAsteroidMedium) {
		var _inst = instance_create_layer(x, y, "Instances", oAsteroid);
		_inst.sprite_index = sAsteroidSmall;
		
		_inst = instance_create_layer(x, y, "Instances", oAsteroid);
		_inst.sprite_index = sAsteroidSmall;
	}
	
	repeat(12) {
		instance_create_layer(x, y, "Instances", oDebris)
	}
}

