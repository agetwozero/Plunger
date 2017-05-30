draw_sprite(spr_shadow,0,x,y);

if(rot == 0 || rot == 1){
    draw_self();
}

if(show_wep){
switch(weapon){
    case 0: ;//Dual Pisol 
    break;
    case 1: draw_sprite(spr_shotgun,rot,x,y);//Shotgun 
    break;
    case 2: draw_sprite(spr_machinegun,rot,x,y);//Machinegun
    break;
    case 3: ;//Flamethrower
    break;
    case 4: ;//Sniperrifle
    break;
    case 5: ;//Rocketlauncher
    break;
    case 6: draw_sprite(spr_minigun,rot,x,y);//Minigun
    break;
    case 7: ;//Railgun
    break;
    case 8: ;//Railgun
    break;
    case 9: ;//Railgun
    break;
}
}
if(mf){
    draw_sprite(spr_mussle_flash,rot,x,y);
}

if(rot == 2 || rot == 3){
    draw_self();
}

if(aiming){
    draw_set_alpha(.5);
    if(rot == 0){
        draw_line_colour(x - 29,y - 17,mouse_x,mouse_y,c_red,c_red);
    }
    if(rot == 1){
        draw_line_colour(x + 64,y - 41,mouse_x,mouse_y,c_red,c_red);
    }
    if(rot == 2){
        draw_line_colour(x + 32,y - 104,mouse_x,mouse_y,c_red,c_red);
    }
    if(rot == 3){
        draw_line_colour(x - 61,y - 72,mouse_x,mouse_y,c_red,c_red);
    }
    draw_set_alpha(1);
}

