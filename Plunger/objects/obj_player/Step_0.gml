/// @description Looking at mouse

if(aiming){
var dir;

dir = point_direction(x,y,mouse_x,mouse_y);

if((dir >= 0 && dir < 45) || (dir >= 315 && dir < 360)){// dir right
    sprite_index = spr_player_walking_right;
    rot = 1;
}else if((dir >= 45 && dir < 135)){// dir up
    sprite_index = spr_player_walking_back;
    rot = 2;
}else if((dir >= 135 && dir < 225)){// dir left
    sprite_index = spr_player_walking_left;
    rot = 3;
}else if((dir >= 255 && dir < 315)){// dir down
    sprite_index = spr_player_walking_front;
    rot = 0;
}
}

///Movement


if(!aiming){
var checkMoving = false;

if(keyboard_check(ord("W"))){
    y -= move_speed;
    checkMoving = true;
    rot = 2;
    sprite_index = spr_player_walking_back;
}
if(keyboard_check(ord("A"))){
    x -= move_speed;
    checkMoving = true;
    rot = 3;
    sprite_index = spr_player_walking_left;
}
if(keyboard_check(ord("S"))){
    y += move_speed;
    checkMoving = true;
    rot = 0;
    sprite_index = spr_player_walking_front;
}
if(keyboard_check(ord("D"))){
    x += move_speed;
    checkMoving = true;
    rot = 1;
    sprite_index = spr_player_walking_right;
}

if(checkMoving){
    image_speed = .4;
}else{
    image_speed = 0;
    image_index = 0;
}
}else{ // if aiming
var checkMoving = false;

if(keyboard_check(ord("W"))){
    y -= move_speed/3;
    checkMoving = true;
}
if(keyboard_check(ord("A"))){
    x -= move_speed/3;
    checkMoving = true;
}
if(keyboard_check(ord("S"))){
    y += move_speed/3;
    checkMoving = true;
}
if(keyboard_check(ord("D"))){
    x += move_speed/3;
    checkMoving = true;
}

if(checkMoving){
    image_speed = .3;
}else{
    image_speed = 0;
    image_index = 0;
}
}

///Check depth

depth = -y;

///Weapon stats

switch(weapon){
    case 0: ;//Dual Pisol 
    break;
    case 1: //Shotgun 
        recoil_power = 16;
        recoil_time = 5;
        shake = 15;
        shake_power = 25;
        fire_rate = 50;
        accuracy = 10;
        range = 30;
    break;
    case 2: //Machinegun
        recoil_power = 5;
        recoil_time = 5;
        shake = 10;
        shake_power = 20;
        fire_rate = 10;
        accuracy = 5;
        range = 60;
    break;
    case 3: ;//Flamethrower
    break;
    case 4: ;//Sniperrifle
    break;
    case 5: ;//Rocketlauncher
    break;
    case 6: ;//Minigun
        recoil_power = 10;
        recoil_time = 5;
        shake = 10;
        shake_power = 50;
        fire_rate = 4;
        accuracy = 20;
        range = 35;
    break;
    case 7: ;//Railgun
    break;
    case 8: ;//
    break;
    case 9: ;//
    break;
}

