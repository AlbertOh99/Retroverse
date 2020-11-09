/// @description Insert description here
// You can write your code in this editor
grv = .5;
invincible = 0;
holder = 0
state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();


enum PLAYERSTATE 
{
	FREE,
	MELEE,
	SHOOT,
	HIT,
	DEAD
}