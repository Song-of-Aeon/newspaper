
function column(contributor_, answers_, questions_=global.questions) constructor {
	contributor = contributor_;
	answers = answers_;
	questions = questions_;
}

global.questions = [
	"what is your name?",
	"what is your quest?",
	"what is the airspeed velocity of an unladen swallow?"
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
	"No problem!"
], ["what is your name?", "Are you working on any self-submitted games this jam?", "What type of game is it?",
"Sounds cool, I imagine there will be a variety of birds and we'll be looking for the odd one out? (Digs through Outside World Notes) Kinda like that Mario 64 DS minigame?",
"Very nice. Was there any particular moment that inspired this vision? What was the thought process like in coming up with the idea?",
"You mentioned a bird watching book - do you have any particular interest in birding or bird watching?", 
"I've heard you've worked on a ton of other jam projects. Is there anything you don't do? You seem to dip your toes into just about everything life has to offer!",
"Dang! You're not kidding. Is there something that drives you to pursue so many interests? Or do you think that exploring new experiences is just an aspect of your personality?",
"I'm struggling to think of ways to tie things back to Gensokyo. or birds, so perhaps it's best I just leave you alone to resume the many projects I'm sure you're working on. Thank you for your time!"]));

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