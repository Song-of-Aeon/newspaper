global.menus = {};
function menu(name_, buttons_, draw_=c_null) constructor {
	name = name_;
	buttons = buttons_;
	draw = munction(draw_);
	count = 0;
	global.menus[$name] = self;
}
function c_makemenu(menu_) {
	var chump = observer_create(o_menuman);
	chump.themenu = deep_copy(menu_);
	return chump;
}

function c_drawbutton() {
	draw_set_color(c_white);
	draw_rectangle(topleft.x, topleft.y, bottomright.x, bottomright.y, true);
	//log("bangin");
	if hovered {
		draw_set_alpha(.4);
		draw_set_color(c_red);
		draw_rectangle(topleft.x, topleft.y, bottomright.x, bottomright.y, false);
		draw_set_color(c_white);
		draw_set_alpha(1);
	}
}

function button(topleft_, bottomright_, onclick_, draw_=c_drawbutton) constructor {
	hovered = false;
	topleft = topleft_;
	bottomright = bottomright_;
	onclick = munction(onclick_);
	draw = munction(draw_);
	width = bottomright.x-topleft.x;
	height = bottomright.y-topleft.y;
	x = topleft.x+(width/2);
	y = topleft.y+(height/2);
	count = 0;
	//c_input();
	//log(WIDTH, HEIGHT);
	step = function(clicky) {
		//log(select.hit, select.hold, select.drop);
		//log(x, y);
		//log(topleft, bottomright);
		//log(width, height);
		hovered = mouse_within(topleft.x, topleft.y, bottomright.x, bottomright.y);
		if hovered && clicky {
			log("yippee!");
			onclick();
		}
	}
}


nu menu("start", [
	new button(
		new vec2(WIDTH*.4, HEIGHT*.5),
		new vec2(WIDTH*.6, HEIGHT*.6),
		game_end,
		function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_meaning(x, y, "hi guys", u, 2);
			draw_set_valign(fa_top);
			draw_set_halign(fa_left);
			c_drawbutton();
		}
	),
	new button(
		new vec2(WIDTH*.4, HEIGHT*.7),
		new vec2(WIDTH*.6, HEIGHT*.8),
		game_end,
		function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_meaning(x, y, "bye guys", u, 2);
			draw_set_valign(fa_top);
			draw_set_halign(fa_left);
			c_drawbutton();
		}
	),
], function() {
	draw_set_halign(fa_center);
	draw_meaning(WIDTH/2, HEIGHT*.15, "the ultimate\nnewspaper", u, 5);
	draw_set_halign(fa_left);
});