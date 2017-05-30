image_xscale += .1;
image_yscale += .1;
image_angle += 10;
image_alpha -= .05;

if(image_alpha <= 0){
    instance_destroy();
}

