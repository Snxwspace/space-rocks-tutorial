/// @description Insert description here
// You can write your code in this editor


if(keyboard_check(vk_left) || keyboard_check(ord("A"))) {
	image_angle += 4;
}

if(keyboard_check(vk_right) || keyboard_check(ord("D"))) {
	image_angle -= 4;
}

if(keyboard_check(vk_up) || keyboard_check(ord("W"))) {
	motion_add(image_angle, 0.04);
} else if(keyboard_check(vk_down) || keyboard_check(ord("S"))) {
	motion_add(image_angle, -0.04);
}

if(keyboard_check_pressed(vk_space)) {
	var _inst = instance_create_layer(x,y, "Instances", oBullet)
	_inst.direction = image_angle
	_inst.direction = image_angle
}

move_wrap(true,true,sprite_width/2);