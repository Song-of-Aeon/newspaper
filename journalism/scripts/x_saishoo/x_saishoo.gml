function saishoo_column(){
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
if not (array_contains(global.unlocks, "saishoo")) array_push(global.unlocks, "saishoo");
}