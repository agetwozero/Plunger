/// @description Step

depth = -y;

if(knockbacked){    
    direction = point_direction(x,y,obj_player.x,obj_player.y) + 180;
    mp_potential_step(x + lengthdir_x(1000,direction), y + lengthdir_y(1000,direction), 8, true);
}



///plunging

if(hp <= 0 && !doorfly){
    instance_create(x,y,obj_effect_doorfly);
    doorfly = true;
}   

if(instance_exists(obj_player)){
    if(hp <= 0 && !plunged && distance_to_object(obj_player) <= 50){ 
    
        inradius = true;
        if(keyboard_check_pressed(ord("E"))){
            plunging = true;
        }
    }else{
        inradius = false;
    }
    
    //if plunging
    if(plunging){
        obj_player.x = x;
        obj_player.y = y - 50;
        obj_player.visible = false;
        obj_player.show_wep = false;
        
        if(plunge_up){
             if(keyboard_check_pressed(ord("W"))){
                plunges--;
                plunge_up = !plunge_up;
             }
        }else{
            if(keyboard_check_pressed(ord("S"))){
               plunges--;
               plunge_up = !plunge_up;
               obj_camera.isshaking = true;
               obj_camera.shake_intencity = 50;
               obj_camera.alarm[0] = 20;
               part_system_depth(global.ps,depth - 999999);
               part_particles_create(global.ps,x,y ,global.pt_water,10);
               part_particles_create(global.ps,x,y ,global.pt_smoke,5);
               instance_create(0,0,obj_effect_plunge);

            }
        }
        
        if(plunges <= 0){
            plunging = false;
            plunged = true;
            obj_player.show_wep = true;
            obj_player.y += 100;
            obj_player.visible = true;
        }
    }
}

