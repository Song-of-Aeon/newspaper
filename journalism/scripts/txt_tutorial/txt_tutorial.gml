function txt_tutorial() {
	msg = msglang([
	txt("Interview different developers as Toshiko!"),
	txt("But stay mindful: You only have 72 hours to set up your newspaper."),
	txt ("You'll have to balance interviewing, eating, sleeping, and finding team members!"),
	txt ("Find all your team members before 55 hours are up, or you'll have to end early!"),
	txt ("Good luck!")
	],[
	
	txt(""),
	
	]);
	
	endevent = function() {
		if !c_minigamecheck() c_makemenu(global.menus.main);
	};
}

global.didramen = 0;
global.didsleep = 0;
global.teammates = 0;