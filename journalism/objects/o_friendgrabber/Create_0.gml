music_set(mus.minigame2);
c_input();
target = irandom(4);
roles = ["Artist", "Test Reader", "Distributor", "Interviewer"];
var funky = function() {
	if mouse_within(x-sprite_width*.35, y-sprite_height*.35, x+sprite_width*.35, y+sprite_height*.35) && o_friendgrabber.select.hit {
		o_friendgrabber.select.hit = false;
		if image_index != o_friendgrabber.target {
			global.timeremaining--;
			room_restart();
		} else {
			room_goto(GENERALZONE);
			c_makemenu(global.menus.main);
		}
		kys;
	}
}
repeat(200) {
	var chump = scriptable_create(funky);
	chump.x = irandom(1920*.8)+1920*.1;
	chump.y = irandom(1080*.8)+1080*.1;
	chump.sprite_index = s_heads;
	do {
		chump.image_index = irandom(4);
	} until chump.image_index != target;
	chump.image_speed = 0;
}
repeat(3) {
	var chump = scriptable_create(funky);
	chump.x = irandom(1920*.8)+1920*.1;
	chump.y = irandom(1080*.8)+1080*.1;
	chump.sprite_index = s_heads;
	chump.image_index = target;
	chump.image_speed = 0;
}