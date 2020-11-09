/// @description Insert description here
// You can write your code in this editor
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

switch (state)
{
	case PLAYERSTATE.FREE:
	PlayerState_Free();
	break;
	case PLAYERSTATE.MELEE:
	PlayerState_Melee();
	break;
	case PLAYERSTATE.SHOOT:
	PlayerState_Shoot();
	break;
	case PLAYERSTATE.HIT:
	PlayerState_Hit();
	break;
	case PLAYERSTATE.DEAD:
	PlayerState_Dead();
	break;
}

 if (bullets == 0){
	obj_reload.image_index  = 1;
	if (keyboard_check_pressed(ord("R"))){
	holder = 0;
	alarm[2] = 20; 
	}
}