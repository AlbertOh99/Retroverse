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
}

 if (bullets == 0 &&  keyboard_check_pressed(ord("R"))){
	//reload
	alarm[2] = 30; 
}