// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Free(){
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


//Walk Animation
if(hsp == 0){
	sprite_index = spr_axel; 
} else {
	sprite_index = spr_axel_run;
}
if (hsp != 0){
	image_xscale = sign(hsp);
}




//shoot
if (keyboard_check_pressed(ord("Z")) && cooldown >= 10 && sprite_index != spr_axel_melee){ //problem with melee attack in the air
	state = PLAYERSTATE.SHOOT;
}
cooldown += 1;

//melee attack
if (keyboard_check_pressed(ord("X"))){
	state = PLAYERSTATE.MELEE;
}
}