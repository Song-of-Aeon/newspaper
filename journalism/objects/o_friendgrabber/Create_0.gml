music_set(mus.minigame2);
c_input();
roles = ["Artist", "Test Reader", "Distributor", "Interviewer"];
target = irandom(3);
if (global.recruit_char == "Artist") target = 0;
else if (global.recruit_char == "Test Reader") target = 1;
else if (global.recruit_char == "Distributor") target = 2;
else if (global.recruit_char == "Interviewer") target = 3;
var funky = function() {
	if mouse_within(x-sprite_width*.35, y-sprite_height*.35, x+sprite_width*.35, y+sprite_height*.35) && o_friendgrabber.select.hit {
		o_friendgrabber.select.hit = false;
		if !(image_index != o_friendgrabber.target) {
			room_goto(AYAZONE3);
		} else {
			audio_play_sound(se_failure, 1, false);
			global.timeremaining--;
			room_restart();
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
		chump.image_index = irandom(3);
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