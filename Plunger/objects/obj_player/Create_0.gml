/// @description Initializing object variables
image_speed = 0;
rot = 0;
mf = false;
aiming = false;
recoil = false;
weapon = 2;
weapon_ready = true;
show_wep = true;

///Init changable variables

move_speed = 8;

//Weapon stats
recoil_power = 16;
recoil_time = 5;
shake = 15;
shake_power = 25;
fire_rate = 10;
accuracy = 10; 
range = 120;

/// Create objects

instance_create(x, y , obj_camera);

