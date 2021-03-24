y -= 1;
image_alpha = lerp(image_alpha, 0,0.01);
draw_set_alpha(image_alpha);
draw_set_colour(c_white);
draw_set_font(font_text);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x,y,"+"+string(txt));

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_alpha(1);