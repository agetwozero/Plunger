/// @description draws self and door

if(plunged){
    draw_sprite(sprite_index,0,x,y);
}else{
    draw_sprite(sprite_index,1,x,y);
}
if(hp > 0){
    draw_sprite(spr_portopot_door,0,x,y);
}

if(plunging){
    draw_sprite(spr_player_walking_front,0,x,y-50);
    if(plunge_up){
        draw_sprite(spr_buttons,1,x,y - 350)
        draw_sprite(spr_plunger,0,x,y);
    }else{
        draw_sprite(spr_buttons,2,x,y - 350);
        draw_sprite(spr_plunger,0,x,y  - 50 );
    }
}

if(inradius && !plunging){
    draw_sprite(spr_buttons,3,x,y - 350);
}
depth = -y;

