var z=2;
nu menu("main", [
	new button(
		new vec2(443, 34),
		new vec2(443+370, 34+125),
		function() {
			historyleaf_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_meaning(x, y, "historyleaf");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(186, 207),
		new vec2(186+370, 207+125),
		function() {
			juney_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_meaning(x, y, "juney");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(28, 427),
		new vec2(28+370, 427+125),
		function() {
			molly_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_meaning(x, y, "molly");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(178, 618),
		new vec2(178+370, 618+125),
		function() {
			theo_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_meaning(x, y, "theo");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(24, 894),
		new vec2(24+370, 894+125),
		function() {
			liam_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_meaning(x, y, "liam");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(511, 862),
		new vec2(511+370, 862+125),
		function() {
			vinyis_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_meaning(x, y, "vinyis");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(516, 385),
		new vec2(516+370, 385+125),
		function() {
			icedlemon_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_meaning(x, y, "icedlemon");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(751, 651),
		new vec2(751+370, 651+125),
		function() {
			solaris_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_meaning(x, y, "solaris");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(952, 883),
		new vec2(952+370, 883+125),
		function() {
			trace_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_meaning(x, y, "trace");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(917, 485),
		new vec2(917+370, 485+125),
		function() {
			saishoo_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_meaning(x, y, "saishoo");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(985, 342),
		new vec2(985+370, 342+125),
		function() {
			zzzzleepy_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_meaning(x, y, "zzzzleepy");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(1239, 209),
		new vec2(1239+370, 209+125),
		function() {
			kit_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_meaning(x, y, "kit");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(937, 27),
		new vec2(937+370, 27+125),
		function() {
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_meaning(x, y, "mystery");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(1489, 412),
		new vec2(1489+370, 412+125),
		function() {
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_meaning(x, y, "mystery");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(1208, 653),
		new vec2(1208+370, 653+125),
		function() {
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_meaning(x, y, "mystery");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(1499, 874),
		new vec2(1499+370, 874+125),
		function() {
			instance_destroy(o_menuman);
			c_makemenu(global.menus.paper);
		}, function() {
			draw_meaning(x, y, "publish");
			c_drawbutton();
		}, 2,
	),
	
], function() {
	draw_spr(0, 0, s_youkaimountain);
});