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
	txt("Wow, I'm tired. Whelp, early bird gets the worm.", TOSHIKO.TIRED, SPRITEPOS.LEFT),
	txt("Turn all the Kappa-power lights off so you can fall asleep!"),
	txt("Left click on a light to turn its adjacent light off."),
	txt("The faster you turn the lights off, the less time it will take to fall asleep."),
	],[
	
	txt(""),
	
	]);
	endevent = function() {
		room_goto(lightsout);
	};
}
