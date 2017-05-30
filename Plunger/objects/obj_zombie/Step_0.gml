/// @description Looking at player

if(agro){
var dir;

dir = point_direction(x,y,obj_player.x,obj_player.y);

if((dir >= 0 && dir < 45) || (dir >= 315 && dir < 360)){// dir right
    sprite_index = spr_zombie_walking_right;
}else if((dir >= 45 && dir < 135)){// dir up
    sprite_index = spr_zombie_walking_back;
}else if((dir >= 135 && dir < 225)){// dir left
    sprite_index = spr_zombie_walking_left;
}else if((dir >= 255 && dir < 315)){// dir down
    sprite_index = spr_zombie_walking_front;
}
}

///Movement

if(agro){
var checkMoving = true;
mp_potential_settings(360,10,false,false);

if(!knockbacked){
//    direction = point_direction(x,y,obj_player.x,obj_player.y);
 //   mp_potential_step(obj_player.x, obj_player.y, move_speed, true);
    
    var aa, bb, pathspeed, goal, failed; 
    pathspeed = move_speed; 
    goal = obj_player; 
    aa = path_add(); 
    bb = mp_grid_create(0,0,room_width/160,room_height/160,160,160);
    mp_grid_add_instances(bb,obj_fence,false); 
    failed = mp_grid_path(bb,aa,x,y,goal.x,goal.y,true); 
    path_start(aa,pathspeed,false,false);
    
}else{
    direction = point_direction(x,y,obj_player.x,obj_player.y) + 180;
    mp_potential_step(x + lengthdir_x(1000,direction), y + lengthdir_y(1000,direction), 8, true);
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

///Check hp

if(hp < 0){
    part_system_depth(global.ps,depth - 5);
    part_particles_create(global.ps,x,y,global.pt_blood,20);
    instance_destroy();
}

///Check for agro


if(instance_exists(obj_player)){
    if(distance_to_object(obj_player) < agro_range){
        agro = true;
    }
}

if(!agro){
    speed = 0;
    image_speed = 0;
}

