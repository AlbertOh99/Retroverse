/// @description Insert description here
// You can write your code in this editor
//heal to full
if (keyboard_check_pressed(ord("H"))){
	health = 6;
	obj_health.image_index = health;
}

if (keyboard_check_pressed(ord("Q"))){
	bullets  = 3
	obj_bullet.image_index = bullets;
	obj_reload.image_index = 0;
}