
function column(contributor_, answers_, questions_=global.questions) constructor {
	contributor = contributor_;
	answers = answers_;
	questions = questions_;
}

global.questions = [
"What is your name?", "What is your specialty when it comes to development? Are you a programmer? Do you focus on the presentation such as music or artwork? Or are you a renaissance man and just do a bit of everything?",
"Tell us a bit about yourself. Feel free to overshare to your heart's content.",
"Would you consider yourself a fan of birds? What is your favorite, if you have any?",
"What is your game? What will it be like? What birds will the birders be able to expect?!",
"If you had to describe your game as a species of bird, which would it be?",
"What's the most difficult part of the game development process for you?"
];

array_push(global.paper.columns, new column("aeon", ["aeon", "make video gaem", "31.33 px/fr"]));
array_push(global.paper.columns, new column("aya shameimaru", ["aya!", "the truth, the whole truth, and nothing but the truth!", "you wanna see?"]));
array_push(global.paper.columns, new column("tsubakura enraku", ["what?", "booze.", "please go away."]));
array_push(global.paper.columns, new column("the venerable mr. ipsum", [
	"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vehicula dui sit amet nibh suscipit vehicula. Phasellus elit velit, venenatis in molestie sed, lobortis rhoncus sem.",
	"Morbi facilisis lacus vitae lorem sagittis euismod. Etiam pretium, metus vel ultrices aliquam, tortor erat auctor augue, vel laoreet orci arcu accumsan enim. Nulla tortor elit, maximus efficitur arcu quis, tristique tristique tortor.",
	"Etiam eleifend egestas nisi, ut maximus arcu mollis a. Duis porttitor, metus sit amet varius posuere, metus neque gravida purus, eu luctus ex nisi laoreet erat. Pellentesque vel tristique ante, vel aliquam massa.",
	"Vivamus ac ex in odio consectetur efficitur. Vivamus in cursus mi, lacinia tincidunt est. Nullam nec dignissim sapien. Sed non semper tortor. Praesent quis dui fringilla, blandit nibh eget, mollis enim."
], ["what is your name?", "sorry, what was that?", "um, but about game development...?", "help"]));
array_push(global.paper.columns, new column("Saishoo", [
	"Saishoo!",
	"Yep!",
	"Where’s Waldo type game.",
	"Yep, exactly!",
	"I’d say… I actually forget how the idea spawned, I was thinking, thought of the bird watching book of NA (North America) and then decided to do a game similar to a where’s Waldo book. I think partial inspiration also came from trying to make a simple, “easy” game.",
	"Not particularly… not currently, at least. I had a slight intrigue it in a handful of years prior, but now I’ve found a notice for culinary arts.",
	"Yeah, pretty much. I’d imagine there’d be too much that I’ve done at least once to include in this interview without drawing it on for ages, but some notable things is tailoring, weaving, beading, rock climbing, cooking, game development, and learning several languages including Cree, Greek and Latin.",
	"I just explore things out of curiosity, so I’d say the latter. Although I do suppose that curiosity is more so out of what other worldviews allow you to see the world in another lens, hence why I’m quite interested in travelling abroad and opening a restaurant.",
	"Was planning to open up Mystia’s Izakaya, including everything from the menu in game (both base and DLCs), however it seems more likely and feasible at the moment to make it just a cafe. Definitely do have plans to open it up as an affordable yet delectable restaurant later down the road.",
	"That question is interesting...I'd say a Cuckoo if we're talking behaviorally, but appearance wise? A night parrot.",
	"No problem!"
], ["what is your name?", "Are you working on any self-submitted games this jam?", "What type of game is it?",
"Sounds cool, I imagine there will be a variety of birds and we'll be looking for the odd one out? (Digs through Outside World Notes) Kinda like that Mario 64 DS minigame?",
"Very nice. Was there any particular moment that inspired this vision? What was the thought process like in coming up with the idea?",
"You mentioned a bird watching book - do you have any particular interest in birding or bird watching?", 
"I've heard you've worked on a ton of other jam projects. Is there anything you don't do? You seem to dip your toes into just about everything life has to offer!",
"Dang! You're not kidding. Is there something that drives you to pursue so many interests? Or do you think that exploring new experiences is just an aspect of your personality?",
"Well to ties this back together completely naturally: If you had to describe your game as a species of bird, which would it be?",
"Good luck the many projects I'm sure you're working on. Thank you for your time!"]));
array_push(global.paper.columns, new column("Molly", ["My specialty is doing art assets for jam games, but I'm going to attempt to branch out into music production for the game I'm working on for this jam (if time allows!).",
"My name is Molly and I like to make stuff. I've been drawing Touhou pictures and posting them on the internet. I also love visiting shrines when I'm procrastinating.",
"The most difficult part of gamedev is managing my time, because I am a lazy bones who does a lot last minute! Another difficult (or maybe challenging) part is adapting the art style to the needs of the game direction, but it's also the most rewarding part because I enjoy being versatile.",
"Between our gamedev duo, my boyfriend (our programming and writing half) is a huge fan of birds and has a growing interest in birdwatching, and through him I've gained a new interest in birds as well. They're mysterious creatures. I'm partial to herons and egrets, since there are some very large, majestic ones living quietly in the river in my hometown.",
"Our game is a dating sim featuring five Touhou bird girls. We're hoping to take a silly, parody-like approach to classic anime and dating sim tropes with the twist of all characters being very birdlike in behavior (a crow girl rummaging through your morning garbage, a sparrow girl making you a bento of worms, etc) while also providing just enough emotional depth to not make it a complete joke, but rather a fun and enjoyable experience for all the people who complain about too many visual novels in game jams. We're paying tribute especially to visual novels by Key (Kanon, Air, Clannad) and also a VN for the Nintendo DS that I got for Christmas when I was 10. Each girl is a different type of bird (so it's not filled with just crow tengu!) and one in particular might be a little unexpected. They all have both girl and bird behaviors for fans of both to enjoy.",
"Our game is, according to our programmer, 'uhhh, i don't know. hahaha. a penguin'."
]));

function c_drawpaper(page=0) {
	draw_sprite_stretched(s_newspaper, 0, 0, 0, 1920, 1080);
	
	var headlinepos = new textthing(10, 40, fa_left, fa_top, 4, ft_sans);
	var authorpos = new textthing(10, 90, fa_left, fa_top, 1, ft_sans);
	var brandpos = new textthing(WIDTH/2, 20, fa_center, fa_top, 1, ft_sans);
	var margin = 40;
	var xdraw = 121+margin;
	var ydraw = 74+margin;
	var amount = ceil(array_length(global.paper.columns[page].answers)/2);
	//var width = (WIDTH-amount*margin-margin)/amount;
	var width = 835-margin*2;
	//var width = WIDTH-margin*2;
	//var height = HEIGHT-ydraw-margin;
	var height = 932-margin*2;
	var textdraw = margin;
	var bro, j, thing1;
	var linebreakin = 4;
	//iterate global.paper.columns to {
	draw_set_color(#3F2D1B);
	i = page;
		draw_set_font(ft_whatever);
		textdraw = margin;
		bro = global.paper.columns[i];
		draw_rectangle(xdraw, ydraw, xdraw+width, ydraw+height, true);
		textdraw += draw_meaning(xdraw+margin, ydraw+textdraw, lb_auto("interviewee:", width-margin*2, "\n"))+linebreakin;
		textdraw += draw_meaning(xdraw+margin, ydraw+textdraw, lb_auto(bro.contributor, width-margin*2, "\n"))+linebreakin;
		textdraw += linebreakin*4;
		for (j=0; j<array_length(bro.answers); j++) {
			if textdraw >= height*.65 {
				xdraw += width+margin;
				draw_rectangle(xdraw, ydraw, xdraw+width, ydraw+height, true);
				textdraw = 0;
			}
			thing1 = lb_auto(bro.questions[j], width-margin*2, "\n");
			draw_meaning(xdraw+margin, ydraw+textdraw, thing1);
			textdraw += string_height(thing1)+linebreakin;
			draw_set_halign(fa_right);
			thing1 = lb_auto(bro.answers[j], width-margin*2, "\n")
			draw_meaning(xdraw+width-margin, ydraw+textdraw, thing1);
			textdraw += string_height(thing1)+linebreakin;
			draw_set_halign(fa_left);
			textdraw += linebreakin*4;
		}
		
	//}
}

function textthing(x, y, halign=fa_left, valign=fa_top, scale=1, font=ft_sans) constructor {
	draw = function(str) {
		draw_set_halign(halign);
		draw_set_valign(valign);
		draw_meaning(x, y, str, font, scale);
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
	}
}