var z=2;
nu menu("main", [
	new button(
		new vec2(50, 50),
		new vec2(100, 100),
		function() {
			textbox_create(txt_toshiko);
			instance_destroy(o_menuman);
		}, function() {
			draw_meaning(x, y, "juney");
			c_drawbutton();
		}, 6,
	),
	new button(
		new vec2(150, 50),
		new vec2(200, 100),
		function() {
			textbox_create(txt_toshiko);
			instance_destroy(o_menuman);
		}, function() {
			draw_meaning(x, y, "saishoo");
			c_drawbutton();
		}, 6,
	),
	new button(
		new vec2(250, 50),
		new vec2(300, 100),
		function() {
			textbox_create(txt_toshiko);
			instance_destroy(o_menuman);
		}, function() {
			draw_meaning(x, y, "molly");
			c_drawbutton();
		}, 6,
	),
	new button(
		new vec2(350, 50),
		new vec2(400, 100),
		function() {
			textbox_create(txt_toshiko);
			instance_destroy(o_menuman);
		}, function() {
			draw_meaning(x, y, "icedlemon");
			c_drawbutton();
		}, 6,
	),
	new button(
		new vec2(450, 50),
		new vec2(500, 100),
		function() {
			textbox_create(txt_toshiko);
			instance_destroy(o_menuman);
		}, function() {
			draw_meaning(x, y, "citrus");
			c_drawbutton();
		}, 6,
	),
	new button(
		new vec2(550, 50),
		new vec2(600, 100),
		function() {
			textbox_create(txt_toshiko);
			instance_destroy(o_menuman);
		}, function() {
			draw_meaning(x, y, "leim");
			c_drawbutton();
		}, 6,
	),
	new button(
		new vec2(750, 50),
		new vec2(800, 100),
		function() {
			instance_destroy(o_menuman);
			c_makemenu(global.menus.paper);
		}, function() {
			draw_meaning(x, y, "publish");
			c_drawbutton();
		}, 2,
	),
	
]);