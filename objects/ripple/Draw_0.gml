draw_set_colour(make_colour_rgb(113,105,228));
draw_set_alpha(alpha);
draw_circle(x,y,radius,true);
draw_circle(x,y,radius/1.2,true);
draw_circle(x,y,radius/1.7,true);
draw_circle(x,y,radius/2.2,true);
draw_circle(x,y,radius/2.7,true);
draw_circle(x,y,radius/3.2,true);
draw_set_colour(c_white);
draw_set_alpha(1);

radius += .55;
alpha -= 0.012;

if (alpha < 0.05) instance_destroy();