function trace_column(){
array_push(global.paper.columns, new column("Trace", [
"im technically a programmer when it comes to game dev, but i wouldnt really say thats my specialty, what im really interested in is the design aspect itself, e.g. mechanics and how theyre conveyed to the player. i aim to be more of a director, as i think im good at thinking about the bigger picture, and im hoping to become more well versed in other parts of game dev so i can become a jack of all trades kind of guy.",
"my name is trace, currently 20 years of age. ive been interested in game design for almost as long as i can remember, as video games were a big part of my childhood. i actually started out making game art before i started programming, having my friend do the programming instead, but none of those projects ever got anywhere. in mid 2018 i picked up game maker studio 1.4 because my brother still had some license keys floating around and started making my own stuff in that engine, although it wasnt until the end of 2019 that i even managed to finish anything at all. i later switched to game maker studio 2 in late 2020, and in 2021 i joined my first touhou game jam, after i hadnt finished anything in over a year. during that time i was pretty unsure if id really be able to stick with game development, but after joining more and more touhou jams game development became the part of myself that i might just have the most confidence in.",
"when acting as a project lead, it can be extremely difficult to properly convey your vision to all the different team members and make sure that the game maintains a consistent style and level of quality. this time around, im picking up a new engine, so having to get used to a different workflow from what im used to is quite challenging too.",
"theyre ok, i guess.",
"im making a duck hunt clone, except the stage is a full 360 degree area around the player and you have to turn around to shoot birds that might potentially be behind you. i got the idea from the fact that the theme of 'bird' didnt give me a lot to work with with my usual process of finding ideas, so instead i just decided to make a game that would spite the people that voted for the theme. bird characters that will be featured will most likely be aya, mystia and kutaka at the very least.",
"the dodo. those birds never even stood a chance."
],
[
"What is your specialty when it comes to development? Are you a programmer? Do you focus on the presentation such as music or artwork? Or are you a renaissance man and just do a bit of everything?",
"Tell us a bit about yourself. Feel free to overshare to your heart's content.",
"What's the most difficult part of the game development process for you?",
"Would you consider yourself a fan of birds? What is your favorite, if you have any?",
"What is your game? What will it be like? What birds will the birders be able to expect?!",
"If you had to describe your game as a species of bird, which would it be?"
]));
if not (array_contains(global.unlocks, "solaris")) array_push(global.unlocks, "trace");
}