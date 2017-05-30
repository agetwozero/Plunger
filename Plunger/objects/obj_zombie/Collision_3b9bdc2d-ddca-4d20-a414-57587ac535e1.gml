/// @description  -HP and knockback
hp -= 1;

direction = other.direction;
knockbacked = true;
alarm[0] = knockback_time;

with (other) {
/// Destroy bullet && particles
instance_create(x,y,obj_bloodsplat);
part_system_depth(global.ps,depth - 5);
part_particles_create(global.ps,x,y,global.pt_blood,10);
instance_destroy();


}
///Image_blend
image_blend = c_red;
alarm[1] = 5;

