

function menu(name_, buttons_, draw_=c_null) constructor {
	name = name_;
	buttons = buttons_;
	draw = munction(draw_);
	count = 0;
	global.menus[$name] = self;
}
function c_makemenu(menu_) {
	var chump = observer_create(o_menuman);
	if global.timeremaining {
		chump.themenu = deep_copy(menu_);
	} else {
		
	}
	return chump;
}

function c_drawbutton() {
	draw_set_color(c_black);
	//draw_set_color(#3F2D1B);
	draw_rectangle(topleft.x, topleft.y, bottomright.x, bottomright.y, true);
	//log("bangin");
	if hovered {
		if timecost {
			draw_set_halign(fa_right);
			draw_text(bottomright.x, bottomright.y+4, "time cost: " + string(timecost) + " hour" + ((timecost != 1) ? "s" : ""));
			draw_set_halign(fa_left);
		}
		draw_set_alpha(.4);
		draw_set_color(c_red);
		draw_set_color(c_black);
		draw_rectangle(topleft.x, topleft.y, bottomright.x, bottomright.y, false);
		draw_set_alpha(1);
	}
}

function button(topleft_, bottomright_, onclick_, draw_=c_drawbutton, timecost_=0) constructor {
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
	timecost = timecost_;
	//c_input();
	//log(WIDTH, HEIGHT);
	step = function(clicky) {
		//log(select.hit, select.hold, select.drop);
		//log(x, y);
		//log(topleft, bottomright);
		//log(width, height);
		hovered = mouse_within(topleft.x, topleft.y, bottomright.x, bottomright.y);
		//log("wow!");
		if hovered && clicky && global.timeremaining >= timecost {
			log("yippee!");
			global.timeremaining -= timecost;
			onclick();
		}
	}
}


nu menu("start", [
	new button(
		new vec2(WIDTH*.4, HEIGHT*.5),
		new vec2(WIDTH*.6, HEIGHT*.6),
		function() {
			instance_destroy(o_menuman);
			textbox_create(txt_toshiko);
		},
		function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_meaning(x, y, "henlo :]", u, 2);
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
			draw_meaning(x, y, "godbye :[", u, 2);
			draw_set_valign(fa_top);
			draw_set_halign(fa_left);
			c_drawbutton();
		}
	),
], function() {
	draw_spr(0, 0, s_desk);
	draw_set_halign(fa_center);
	draw_meaning(WIDTH/2, HEIGHT*.15, "the ultimate\nnewspaper", u, 5);
	draw_set_halign(fa_left);
});

nu menu("paper", [
	new button(
		new vec2(121, 74),
		new vec2(121+835, 74+932),
		function() {
			o_menuman.page--;
		}, function() {
			//draw_meaning(x, y, "<-");
			c_drawbutton();
		}
	),
	new button(
		new vec2(962, 74),
		new vec2(962+835, 74+932),
		function() {
			o_menuman.page++;
		}, function() {
			//draw_meaning(x, y, "->");
			c_drawbutton();
		}
	),
], function() {
	with o_menuman {
		statish("page", 0);
		//log(self);
		c_input();
		page = cycle(page+right.hit-left.hit, array_length(global.paper.columns));
		c_drawpaper(page);
	}
});