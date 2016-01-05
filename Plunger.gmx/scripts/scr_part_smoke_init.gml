global.pt_smoke = part_type_create();
pt = global.pt_smoke;

part_type_shape(pt,pt_shape_square);
part_type_size(pt,1,2,-.1,0);
part_type_color2(pt,c_ltgray,c_gray);
part_type_speed(pt,4,8,-.1,0);
part_type_direction(pt,0,360,0,0);
part_type_life(pt,30,30);

