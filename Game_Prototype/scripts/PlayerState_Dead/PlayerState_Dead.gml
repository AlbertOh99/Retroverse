// Script asse s have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Dead(){
	if (health <= 0){
		sprite_index = spr_axel_die;
	} else {
		state = PLAYERSTATE.FREE; 
	}
	
		if(animation_end()){
		room_goto(GameOver);
		}
}