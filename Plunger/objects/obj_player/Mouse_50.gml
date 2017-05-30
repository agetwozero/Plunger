/// @description Shoot 
if(aiming){
if(weapon_ready){
//Particles

part_system_depth(global.ps,depth - 5);
if(rot == 0){
    part_particles_create(global.ps,x - 29,y - 17,global.pt_smoke,20);
    instance_create(x - 29 ,y - 17 ,obj_bullet);
    
    if(weapon == 1){
        instance_create(x - 29 ,y - 17 ,obj_bullet);
        instance_create(x - 29 ,y - 17 ,obj_bullet);
    }
}
if(rot == 1){
    part_particles_create(global.ps,x + 64,y - 41,global.pt_smoke,20);
    instance_create(x + 64,y - 41 ,obj_bullet);
    
    if(weapon == 1){
        instance_create(x + 64 ,y - 41 ,obj_bullet);
        instance_create(x + 64 ,y - 41 ,obj_bullet);
    }
}
if(rot == 2){
    part_particles_create(global.ps,x + 32,y - 104,global.pt_smoke,20);
    instance_create(x + 32,y - 104 ,obj_bullet);
    
    if(weapon == 1){
        instance_create(x + 32 ,y - 104 ,obj_bullet);
        instance_create(x + 32 ,y - 104 ,obj_bullet);
    }
}
if(rot == 3){
    part_particles_create(global.ps,x - 61,y - 72,global.pt_smoke,20);
    instance_create(x - 61,y - 72 ,obj_bullet);
    
    if(weapon == 1){
        instance_create(x - 61 ,y - 72 ,obj_bullet);
        instance_create(x - 61 ,y - 72 ,obj_bullet);
    }
}

mf = true;
alarm[1] = 5;

//Knockback
recoil = true;
direction = point_direction(x,y,mouse_x,mouse_y) - 180;
speed = recoil_power;
alarm[0] = recoil_time;

//Camera shake
obj_camera.isshaking = true;
obj_camera.shake_intencity = shake_power;
obj_camera.alarm[0] = shake;

//Shader
instance_create(0,0,obj_effect_shoot);

weapon_ready = false;
alarm[2] = fire_rate;
}
}

