
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
array_push(global.paper.columns, new column("Junejijo", [
"When it comes to making games, it's junejijo.",
"I tend to be the director as well as the writer for games our circle [BakaBaku] creates. I've also been responsible for programming (not really my preference) and graphics (which I've slowly started to improve on) when in a pinch on various BaBaCi projects. I have served as a writer, advisor and in a handful of unpublished instances, a voice actor for games outside of BaBaCi.",
"I think it's inevitable that a director will always want say in the writing because they're so emotionally attached to the message they're trying to send. I grew up with a cinematic arts and theater background, so I learned pretty early on that unity of vision is really very important when it comes to how to present any form of media. If there's any mis-step in the creative process between the writer and director, it really does reflect in the final cut. Just watch any movie-centric episode of Matt McMuscles' 'What Happened?' series or RedLetterMedia or even something like Mystery Science Theater 3000, and you'll notice how quickly things can unravel when it's clear the message and words don't mix. In terms of how easy it is, I would say it's harder than people might think. Because you have that much more investment in it, any decision which might get affected can feel like a personal attack, especially if it concerns a story feature. It can be hard to split that baby between the vision you want to put out into the world and the reality of your project. Ambition can often get in the way of completion-- a lesson I've learned and am still learning to this day.",
"The creative process I have is pretty scattered. I have a list of about two dozen ideas I've collected over three years ready to go at any time. These ideas tend to be single line phrases or more general observations/concepts or even just a funny tweet I saw I think would make for a good concept down the line. For this particular game, I actually took two ideas I had kinda put in the back of my brain and mashed them together into a single one. (I can expound about that if you like later.) After that, it was just about finding a proper format. I have a reputation for producing visual novels, so this time I really wanted to challenge myself and make something unique that I thought was lacking in the Touhou Game Jam sphere. (I'm always chasing that one little innovation.) So in a break from my usual tradition, I asked some people from a lot of different social circles what might work for such a concept, got some feedback on it, did some research on that feedback, then decided on a handful of influences from there. In terms of what it's like, we originally wanted to make it a little more comedic than it ended up being. Our working title was 'Tengu Society Simulator', which was meant to emulate like, Bus Driver Simulator or Goat Simulator or some such. The first vision of the game was something like The Game of Life, where you played against three other tengu and went through a variety of events. But as I got deeper into the writing of the game and we had to chage how the game worked, I realized there was a very good opportunity to make something relating to the human nature of politics. The object of the game is to win a vital promotion using your inherent skills and sharp wit-- while dealing with weaknesses-- by taking any steps necessary. I wanted to put the user into making tough choices right away, so everything from the choice of character to differing rarities of resource events to even the use of 'I' and 'you' is intentional.",
"Oh absolutely. I have always had a fascination with birds from the time I were a kid. I used to walk up to seagulls all the time to try and catch them, much to my mom's ire. Birds are really very cool animals, with lots of variety and a very complex way of life which makes them ceaselessly fascinating. There's big loon habitats near where I live and it's always fun to watch them move around unafraid of everything. In terms of the theme influencing the game, it did in that it allowed me to center a game on the bird tengus, which is something I've wanted to do for awhile now but never found a good opportunity for it. Aya was my first Touhou love and some of it is because of her being a crow, which is a kind of bird I love to bits.",
"I think I'd describe it as a cardinal. You think you know a cardinal, but in birding, the cardinal is one of the hardest birds to pin down. They have a great variety of plumages and can often be mistaken for similar birds. To tie it to the game, you might think you know what it is from the looks of it, but as you keep playing, you realize it might be more complex than anticipated. It's the same game, but it can go in so many different directions.",
"Ha, thanks! I enjoyed the talk!"

], ["What is your name?",
"From the outset, it seems like you're mainly a writer for game jam entries. Are there any other roles you also take on with game-making?",
"That's quite a lot! Directing and Writing seem like your two main roles. Do you feel being the writer of your games makes directing easier in some ways?",
"So in this mixed role, you've created a new game for this bird jam. What's your game about, and how have you shaped its vision?",
"The theme of birds is quite an unusual one. Were you already a fan of birds before you made the game, and how did the theme end up influencing your game?",
"If you had to describe your game as a species of bird, which would it be?",
"Alright. Thank you for your time! I hope readers will enjoy your 'cardinal'."
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