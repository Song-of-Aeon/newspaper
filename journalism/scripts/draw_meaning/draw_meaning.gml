function draw_meaning(x, y, str, font=draw_get_font(), scale=1, color=draw_get_color(), angle=0, alpha=draw_get_alpha(), madwidth=99999) {
	var col = draw_get_color();
	var alph = draw_get_alpha();
	draw_set_color(color);
	draw_set_font(font);
	draw_set_alpha(alpha);
	//var height = string_size("O").y*1.2;
	var height = string_height("O");
	draw_text_ext_transformed(x, y, string(str), height, madwidth, scale, scale, angle);
	draw_set_color(col);
	draw_set_alpha(alph);
	return string_height(string(str));
}

#macro draw_text draw_meaning