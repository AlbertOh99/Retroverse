 // Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Melee(){


var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

if (place_meeting(x, y + 1, obj_platform)) && (key_jump)
{
	vsp = -jumpsp;
}

//Horizontal collision
if (place_meeting(x + hsp, y, obj_platform)){
	while(!place_meeting(x + sign(hsp), y, obj_platform)) {
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

//Vertical Collision
if (place_meeting(x, y + vsp, obj_platform)){
	while(!place_meeting(x , y + sign(vsp), obj_platform)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;


if(sprite_index != spr_axel_melee){
	sprite_index = spr_axel_melee;
	image_index = 0;
	ds_list_clear(hitByAttack);
}
	//created a new sprite to find the attack hitbox
	mask_index = spr_axel_meleeHB;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y,obj_enemy,hitByAttackNow, false);
	
	if (hits > 0){
		for (var i = 0; i < hits; i++){
			//if this isntance has not yet been hit by this attack
			var hitID = ds_list_find_value(hitByAttackNow, i);
			if (ds_list_find_index(hitByAttack,hitID) = -1){
				ds_list_add(hitByAttack,hitID);
				with (hitID){
					EnemyHit();
				}
			}
		}
	}
	ds_list_destroy(hitByAttackNow);
	mask_index = spr_axel;

	if (animation_end()){
		sprite_index = spr_axel;
		state = PLAYERSTATE.FREE;
	}

}


