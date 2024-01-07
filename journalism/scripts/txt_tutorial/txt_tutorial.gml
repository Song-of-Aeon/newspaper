function txt_maintutorial() {
	msg = msglang([
	txt("Interview different developers as Toshiko!"),
	txt("But stay mindful: You only have 72 hours to set up your newspaper."),
	txt ("You'll have to balance interviewing, eating, sleeping, and finding team members!"),
	txt ("Find all your team members before 55 hours are up, or you'll have to end early!"),
	txt ("Good luck!")
	],[
	
	txt(""),
	
	]);
}

function txt_sleeptutorial() {
	msg = msglang([
	txt("Wow, I'm tired. Whelp, early bird gets the worm.", TOSHIKO.TIRED, SPRITEPOS.CENTER),
	txt("Turn all the Kappa-power lights off so you can fall asleep!"),
	txt("Left click on a light to turn its adjacent light off."),
	txt("The faster you turn the lights off, the less time it will take to fall asleep."),
	],[
	
	txt(""),
	
	]);
	endevent = function() {
		music_set(mus.minigame1);
		room_goto(lightsout);
	};
}
function txt_sleepwin() {
	msg = msglang([
	txt("You turned all the lights off in time! Eight hours have passed!")
]);
	endevent = function() {
		room_goto(AYAZONE);
		global.timeremaining -= 8;
		audio_play_sound(se_successful, 1, false);
		music_choice = random(2);
		if music_choice <= 1 music_set(mus.interview1);
		else music_set(mus.interview2);
		
		if c_minigamecheck() c_makemenu(global.menus.main);
	};
}
function txt_sleeplose(){
	msg = msglang([
	txt("You weren't fast enough. Ten hours have passed.")
]);
	endevent = function() {
		room_goto(AYAZONE);
		global.timeremaining -= 10;
		music_choice = random(2);
		if music_choice <= 1 music_set(mus.interview1);
		else music_set(mus.interview2);	
		if c_minigamecheck() c_makemenu(global.menus.main);
	};
}