/// @description  -HP and knockback
hp -= 1;

direction = other.direction;
knockbacked = true;
alarm[0] = knockback_time;

with (other) {
/// Destroy bullet && particles
part_system_depth(global.ps,depth - 5);
instance_destroy();


}
///Image_blend
image_blend = c_red;


