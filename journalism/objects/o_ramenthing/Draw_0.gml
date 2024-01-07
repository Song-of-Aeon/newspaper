draw_set_color(c_white);
draw_rectangle(WIDTH*.2, HEIGHT*.7, WIDTH*.35, HEIGHT*.4, true);
draw_rectangle(WIDTH*.2, HEIGHT*.7, WIDTH*.35, HEIGHT*.7-(count/capacity)*HEIGHT*.3, false);
draw_set_color(c_yellow);
draw_line(WIDTH*.2, HEIGHT*.7-(range.lower/capacity)*HEIGHT*.3, WIDTH*.2, HEIGHT*.7-(range.upper/capacity)*HEIGHT*.3);