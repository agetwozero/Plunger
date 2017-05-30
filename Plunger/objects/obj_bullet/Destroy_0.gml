/// @description Camera shake
obj_camera.isshaking = true;
obj_camera.shake_intencity = 20;
obj_camera.alarm[0] = 10;

///Partical effect
part_system_depth(global.ps,depth - 5);
part_particles_create(global.ps,x,y ,global.pt_smoke,10);


