/// @description Insert description here
// You can write your code in this editor

if fading {
	image_alpha -= 0.02	;
	speed *= 0.96;
	if(image_alpha <= 0) {
		instance_destroy();
	}
}

