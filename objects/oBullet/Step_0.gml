/// @description Insert description here
// You can write your code in this editor

if fading {
	image_alpha -= 0.05;
	speed *= 0.95;
	
	if(image_alpha <= 0) {
		instance_destroy();
	}
}
