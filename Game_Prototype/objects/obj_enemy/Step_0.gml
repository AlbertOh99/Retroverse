/// @description Insert description here
// You can write your code in this editor
attack_range = 2200;
if(distance_to_object(obj_player) < attack_range){
EnemyState_Shoot()
}
switch (enemy_state)
{
	case ENEMYSTATE.HIT:
	EnemyState_Hit();
	break;
	case ENEMYSTATE.SHOOT:
	EnemyState_Shoot();
	break;
}                 