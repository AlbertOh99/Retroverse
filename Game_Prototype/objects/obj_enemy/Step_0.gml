/// @description Insert description here
// You can write your code in this editor

switch (enemy_state)
{
	case ENEMYSTATE.FREE:
	
	break;
	case ENEMYSTATE.HIT:
	EnemyState_Hit();
	break;
	case ENEMYSTATE.SHOOT:
	EnemyState_Shoot();
	break;
}                 