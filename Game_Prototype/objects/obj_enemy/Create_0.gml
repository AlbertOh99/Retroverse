/// @description Insert description here
// You can write your code in this editor

enemy_state = ENEMYSTATE.FREE;
image_xscale = -1;

alarm[0] = 10;
enum ENEMYSTATE
{
	FREE,
	HIT,
	SHOOT,
	DEAD
}