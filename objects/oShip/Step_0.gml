/// @description Insert description here
// You can write your code in this editor


if(keyboard_check(vk_left)) {
	image_angle += 4;
}

if(keyboard_check(vk_right)) {
	image_angle -= 4;
}

if(keyboard_check(vk_up)) {
	motion_add(image_angle, 0.04);
} else if(keyboard_check(vk_down)) {
	motion_add(image_angle, -0.04);
}

move_wrap(true,true,sprite_width/2);