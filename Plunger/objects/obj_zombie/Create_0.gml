/// @description Initializing object variables
image_speed = 0;
speed = 0;
knockbacked = false;
agro = false;

var dir = floor(random(4));

switch(dir){
    case 0: sprite_index = spr_zombie_walking_front; break;
    case 1: sprite_index = spr_zombie_walking_right; break;
    case 2: sprite_index = spr_zombie_walking_back; break;
    case 3: sprite_index = spr_zombie_walking_left; break;
}

///Init changable variables

move_speed = 4;
hp = floor(random(2)) + 1;
knockback_time = 15;
agro_range = 1000;

