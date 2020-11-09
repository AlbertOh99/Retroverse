/// @description Insert description here
// You can write your code in this editor

//restart to menu
if (keyboard_check_pressed(ord("R"))){
	game_restart();
}

//kill all enemies
if (keyboard_check_pressed(ord("K"))){
	instance_destroy(obj_enemy);
}
