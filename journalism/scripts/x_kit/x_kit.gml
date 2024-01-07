function kit_column(){
array_push(global.paper.columns, new column("Kit", [
"Alex ^^ (KitMakesGames).",
"Well, you could say a bit of everything, though I'm a programmer first and foremost. I can do a bit of pixel art and can arrange music to a limited degree though.",
"I'm an artist mainly, though I do game development as a side thing. I enjoy playing games in my free time, as well as hanging out with both friends online and family offline.",
"There's a lot of things, but I'll give a few notable ones. Wasting time on coding small details instead of the big picture is a problem for me, for example, in the current game I'm working on, I spent a lot of time on perspective and background details near the start, when I should have been working on gameplay features, like a lives system (only just started on that). Sleep schedules are also an issue because I feel like I'm wasting time by sleeping, but at the same time we all know what 0 sleep does to someone. Also, there's times where I really want a feature but can't code it and end up burnt out, like Bombs in my pride jam entry. There's a lot more but those are just the ones that pop into my head.",
"One bird fighting a gang of birds, with the first boss I was able to implement (and likely the only one) being a bird, and the name is a bird pun.",
"I like a lot of birds, especially crows ^^ it's just really intresting seeing how smart they are, like how they partner with wolves, and also they just look cool. There's a reason the regional bird has almost always been on every pokemon team of mine.",
"Corviknight, though shoutout to Toucannon for being so angry it flies with sheer force of anger alone. Absolute legend.",
"Probably like, a peacock. Looks really cool, but can't do a lot outside of that, considering I only enough time to make 1 stage.",
"Thanks ^^"
],
[
"What is your name?",
"What is your specialty when it comes to development? Are you a programmer? Do you focus on the presentation such as music or artwork? Or are you a renaissance man and just do a bit of everything?",
"Tell us a bit about yourself. Feel free to overshare to your heart's content.",
"What's the most difficult part of the game development process for you?",
"What's your game jam entry about? Will the bird fans be satisfied?",
"Would you consider yourself a fan of birds? What is your favorite, if you have any?",
"What's your favorite regional bird?",
"If you had to describe your game as a species of bird, which would it be?",
"Alright, that should be everything. Thank you for your time!"
]));
if not (arraycontains(globals.unlocks, "kit")) array_push(globals.unlocks, "kit");
}