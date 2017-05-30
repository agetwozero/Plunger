if(instance_exists(obj_player)){
    x = obj_player.x;
    y = obj_player.y;
}

if(isshaking) {
     x += random(shake_intencity) - shake_intencity/2;
     y += random(shake_intencity) - shake_intencity/2;
}

