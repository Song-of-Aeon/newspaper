function txt_interviews() {
	
	msg = msglang([
	txt("Alright, time to interview them!", TOSHIKO.NEUTRAL, SPRITEPOS.CENTER),
	txt("Interview Successful!")
	],[
	
	txt(""),
	
	]);
	
	endevent = function() {
		audio_play_sound(se_successful, 1, false);
		if !c_minigamecheck() c_makemenu(global.menus.main);
	};
}