speed = 40;
accuracy = obj_player.accuracy;
alarm[0] = obj_player.range;

direction = point_direction(x,y,mouse_x,mouse_y) - accuracy + (random(accuracy)*2) ;
image_angle = direction;

