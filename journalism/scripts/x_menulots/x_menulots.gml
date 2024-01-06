var z=0;
nu menu("main", [
	new button(
		new vec2(WIDTH*++z*.05, HEIGHT*z*.05),
		new vec2(WIDTH*++z*.05, HEIGHT*z*.05),
		function() {
			textbox_create(txt_toshiko);
		}, function() {
			draw_meaning(x, y, "juney");
			c_drawbutton();
		}, 6,
	),
	new button(
		new vec2(WIDTH*++z*.05, HEIGHT*z*.05),
		new vec2(WIDTH*++z*.05, HEIGHT*z*.05),
		function() {
			textbox_create(txt_toshiko);
		}, function() {
			draw_meaning(x, y, "saishoo");
			c_drawbutton();
		}, 6,
	),
	new button(
		new vec2(WIDTH*++z*.05, HEIGHT*z*.05),
		new vec2(WIDTH*++z*.05, HEIGHT*z*.05),
		function() {
			textbox_create(txt_toshiko);
		}, function() {
			draw_meaning(x, y, "molly");
			c_drawbutton();
		}, 6,
	),
	new button(
		new vec2(WIDTH*++z*.05, HEIGHT*z*.05),
		new vec2(WIDTH*++z*.05, HEIGHT*z*.05),
		function() {
			textbox_create(txt_toshiko);
		}, function() {
			draw_meaning(x, y, "icedlemon");
			c_drawbutton();
		}, 6,
	),
	new button(
		new vec2(WIDTH*++z*.05, HEIGHT*z*.05),
		new vec2(WIDTH*++z*.05, HEIGHT*z*.05),
		function() {
			textbox_create(txt_toshiko);
		}, function() {
			draw_meaning(x, y, "citrus");
			c_drawbutton();
		}, 6,
	),
	new button(
		new vec2(WIDTH*++z*.05, HEIGHT*z*.05),
		new vec2(WIDTH*++z*.05, HEIGHT*z*.05),
		function() {
			textbox_create(txt_toshiko);
		}, function() {
			draw_meaning(x, y, "leim");
			c_drawbutton();
		}, 6,
	),
	new button(
		new vec2(WIDTH*++z*.05, HEIGHT*z*.05),
		new vec2(WIDTH*++z*.05, HEIGHT*z*.05),
		function() {
			textbox_create(txt_toshiko);
		}, function() {
			draw_meaning(x, y, "publish");
			c_drawbutton();
		}, 2,
	),
]);