"Psyops, Yo" by MP Kempke and Hamish Amis

volume definitions

include Trivial Niceties by Andrew Schultz.

include Undo Output Control by Erik Temple.

include Old School Verb Total Carnage by Andrew Schultz.

Include Bold Final Question Rows by Andrew Schultz.

the story headline is "A slogs-log"

the story genre is "Humor/wordplay"

the release number is 3.

release along with cover art.

release along with the "Parchment" interpreter.

the maximum score is 6.

chapter game specific includes

include Psyops Yo Definitions by Andrew Schultz.

include Psyops Yo Globals by Andrew Schultz.

include Psyops Yo Random Text by Andrew Schultz.

section testing - not for release

include Psyops Yo Tests by Andrew Schultz.

volume types

a doubler is a kind of thing. a doubler can be doubled. a doubler is usually not doubled. a doubler has text called xtra-text.

a doubler has a rule called a guess-rule.

a doubler has text called zaptext. a doubler has a room called zaploc.

before printing the name of a doubler (called dub): if dub is doubled, say "[xtra-text of dub] ".

check taking a doubler:
	now take-try is true;
	say "You reach for [the noun], but you feel resistance. What is going on? Another look, and, well, it just seems too plain as-is. Maybe if you jazzed it up, it would be more worth taking, or feel more worth being taken." instead;

a person has text called talk-text.

volume main bit(s)

every turn when map region of location of player is Top Stops (this is the check returned item every turn rule):
	repeat with UT running through doublers enclosed by the player:
		if zaploc of ut is location of player:
			say "[zaptext of UT][line break]";
			moot ut;
			let F be random npcish person in location of player;
			moot random npcish person in location of player;
			continue the action;
	continue the action;

every turn when map region of location of player is Top Stops (this is the check first loop rule):
	if first-loop is true, continue the action;
	if number of unvisited rooms in Top Stops is 0:
		now first-loop is true;
		say "You've been around everywhere. Elapse, laps, you think to yourself.";

rule for supplying a missing noun when talking:
	if number of people in location of player is 2:
		now noun is random npcish person in location of player;
	else:
		now noun is the player.

section room definitions

a room has text called clue-text.

to say unsuns-gulf:
	if un suns are not moot, say "The un-suns hang menacingly in the sky, blotting things out and causing general depression and dreariness. ";
	say "Passages through the Ingulfing Gulf lead ";

volume when play begins

when play begins:
	say "You finish reading the complete adventures of Tintin again. And you reflect on your life.";
	wfak;
	say "What with your nice job at DecodeCo, you don't NEED to save money, but you do enjoy your nice end-of-month trip to the discount warehouse without any hiccups. ";
	wfak;
	say "Was that too much to ask? Apparently it was, this time. Costco St. and the familiar trip by Logan Slogans seemed quiet enough, until that horribly ghostly voice 'Why save a few dollars ... when you could save ... the TOP STOPS?'";
	wfak;
	say "You should have known the ghost was not going to help you save a LOT of dollars instead, but you couldn't resist. Costco St. took a dark turn, and you wound up somewhere much darker.";
	wfak;
	say "The ghost points to the dark blobs in the sky. 'Lo! Blob?!' you say. 'Un-Suns!' it replies. Then to the distance, where sounds speak for themselves. A yowly owl! Wan swans! 'It sits!' cried the ghost, un-grammatically. You ask for more help, but the ghost taunts you with 'Un-begun? Beg!' Before you have a chance, it fades away with an 'I.e. ... DIED!'";
	move un suns backdrop to all rooms in Top Stops;
	move ingulfing gulf backdrop to all rooms in Top Stops;
	move ingraining rain backdrop to all rooms in Top Stops;
	now the right hand status line is "[score]/[maximum score]";

volume backdrops

chapter general backdrops

instead of doing something with a backdrop:
	if current action is not examining:
		say "Sadly, [the noun] leaves you so helpless you can't do much more than examine [if noun is plural-named]them[else]it[end if]. So you do.";
		try examining noun instead;
	continue the action;

chapter un suns

the un suns are a backdrop. printed name is "un-suns". "[if score >= 3]They're much less gloomy now. You did what you could.[else]They're totally, like, dark and gloomy and stuff. Just the thought of them makes you think, 'O, wow!'[end if]"

chapter ingulfing gulf

the ingulfing gulf is a backdrop. "Ingraining rain slowly keeps filling it up, limiting your travel options. [if score >= 3]It's receded quite a bit, but you don't want to fight through it. You sense your destiny is down[else]You really don't want to even touch it[end if]."

to say igulf: say "The Ingulfing Gulf surrounds you every way except [list of viable directions]"

section ingraining rain

the ingraining rain is a backdrop. "Well, it isn't terribly gaudy looking rain, but it's enough to prevent you from straying."

volume the player

the description of the player is "Not dazzling, but frankly, you're relieved not to be wearing a tutu or muumuu.".

the scowls cowl is a thing. the player wears the scowls cowl. description of scowls cowl is "It makes you feel down, and you can't pull it off. [if score is 0]Maybe helping other people will cheer you up[else if score is 1]It feels less oppressive now you've helped yourself a bit[else]You barely feel it now, but you can't throw it off just yet[end if]. "

after examining scowls cowl for the first time:
	say "You imagine a faux-cheery voice telling you to turn that frown upside-down! You're not wearing a tutu!";

check taking off scowls cowl: say "It's stuck on you. Perhaps figuring what to do will be more effective to turn that frown upside down." instead;

volume map basics

check going nowhere: say "You try to, but you realize you might step into ... the INGULFING GULF. You can, however, go [list of viable directions]." instead;

Top Stops is a region.

Ingoing O is a region.

talking is an action applying to one thing.

understand "t [something]" and "talk [something]" and "talk to [something]" as talking.
understand "t" and "talk" as talking.
understand "t" and "talk" and "talk to" as talking.

check talking a person: say "[talk-text of noun][line break]" instead;

check talking: say "You don't need to talk to anyone or anything, though people may give some silly response." instead;

talk-text of the player is "You give yourself a chic 'Hi' ... at 'orator.'"

volume Top Stops

book Strangest Range

Strangest Range is a room in Top Stops. "[unsuns-gulf]north[if score < 3] (or northeast)[else], northeast[end if] and east[or-well]."

after printing the locale description for Strangest Range when init-about is false:
	now init-about is true;
	say "[i][bracket][b]NOTE[r][i]: [this-game][i] requires specific unusual commands to win. You may wish to type [b]ABOUT[r][i] to find out more or [b]VERBS[r][i] t osee a list of useful or needed verbs.[close bracket][line break]";

chapter alkie

the Stalkiest Alkie is a person in Strangest Range. "[one of]'Uh, hi, I'm the stalkiest alkie! People told me a pejorative like that would help me drink less, but somehow it made me drink more. Guess I'm stuck with it, though, unless someone can help me.'[or]The stalkiest alkie, stuck with a pejorative name, paces back and forth, looking for something here and not looking for it.[stopping]". description is "Like so many people who drink a lot, the Alkie may both want a drink and want an excuse never to want a drink again.". talk-text is "'If you could find something that'd turn me off alcohol forever, that'd be awesome! Why, I'd take it from your hands before you had a chance to give it to me.'"

chapter cap

the cap is a doubler in Strangest Range. xtra-text of cap is "escapes". "A cap sits on the ground here. Its brim seems stuck.". description is "[if player has cap]It's not trying to escape you, but maybe it will help you escape[else]The way the cap lies on the ground suggests it's being held. It's not of particularly stiff material, but it's standing straight up[end if].". guess-rule is guess-cap rule. zaploc is Ingrowing Row. zaptext is "The Tormentor Men squint at your escapes cap. They start with the usual insults, but you deflect them. They're actually a bit impressed. They say it must be the cap, but the cap ... escapes after a breeze blows it away. The Tormentor Men go chasing after it, because they can't have anyone else wearing it and failing to heed them. The cap blows far away, taking the Tormentor Men with.[paragraph break]'Ehe! Heh!' you think to yourself, not even worrying if they'd chide you for cheating just now."

this is the guess-cap rule: say "The cap jumps up into your hands!"

book Ingrowing Row

Ingrowing Row is east of Strangest Range. It is in Top Stops. "[unsuns-gulf]north (or northwest) and west[or-well]."

chapter Tormentor Men

The Tormentor Men are plural-named people in Ingrowing Row. "Tormentor men stand here. They aren't even throwing light slights at you ... at least not while you're looking. They definitely go in for a gag.". talk-text is "'Derider?! I?!' they all respond individually. Then, 'Ain't saints!'[paragraph break]There are a few mor taunts, well above 'Coo-coo,' 'Dum-dum,' 'Wah-wah' or 'Haw-haw.'[paragraph break]It's annoying, being a sheesh-ee, but at least they're not attacking you. Maybe it's more fun for them to drag things out. Perhaps you could lure them into chasing after something that can't be tormented. They'd probably jump before you know it[one of]. If they were French, they'd definitely, be a quip-equipe, with voices smooth as Le Oleo[or][stopping].". description is "They are wearing mock-smocks.".

after examining tormentor men for the first time: say "You feel momentary relief they're not a Getting-Ettin, looking to maul you. But you still want them to just go."

The Tormentor Men wear the mock smocks. description of smocks is "Even looking at them makes you feel insulted."

chapter hat

the hat is a doubler in Ingrowing Row. xtra-text of hat is "mahatma". guess-rule is guess-hat rule. "A tall narrow hat, not looking very special, lies here. The top sways in the wind, but the bottom seems quite stiff.". description is "The hat is [if hat is doubled]impressive and all, but it's not your style. You need to find someone it fits[else]impressive looking, yet it repels you a bit, as if you need to find out its meaning or purpose[end if].". zaploc is Ur Church. zaptext is "The [aide] grabs the hat. 'THAT HAT, HA!'[paragraph break]You nod, impressed by such above-and-beyond dialogue.[paragraph break]'This is what I need! It will give me the peace of mind to re-prep and re-prep the sanctifying rituals that will lessen the un-suns['] horrible influence! It fits them perfectly. They thank you, bless you, and then go out to spread decency and kindness to others, a true [']umble rumbler.[paragraph break]Shortly after, a distant 'Aw! Rawr!' followed by a much more calming Om-bomb and then an 'Ow! Rowr!' suggests they have done whatever they needed to, to the un-suns."

this is the guess-hat rule: say "The hat suddenly looks a little more dignified."

book Ur Church

Ur Church is northeast of Strangest Range. It is north of Strangest Range. It is in Top Stops. printed name is "Ur-Church". "[unsuns-gulf]southwest and southeast[or-well]. The oppressive noise has changed, though that's not what you need to change somewhere."

Ur Church is north of Ingrowing Row. It is northwest of Ingrowing Row.

check going in Ur Church:
	if noun is south and score is 0, say "There are passages southwest and southeast, but there is resistance south. For now." instead;
	if noun is east, try going southeast instead;
	if noun is west, try going southwest instead;

chapter aide

the Staidest Aide is a person in Ur Church. "A staidest aide stands around here, touching their head as if they need to put something on it to TRULY seem official.". description is "The Staidest Aide looks back at you, trying to tip non-existent headgear and failing.". talk-text is "'Beg, un-begun.'".

chapter Stalest Ale

the ale is a doubler in Ur Church. xtra-text is "stalest". description is "[if ale is doubled]It doesn't look especially menacing, but you really don't want to drink it[else]It's plain, as if it could become something else, or be more or less palatable, for better or worse[end if].". "Some ale lies here at a weird angle--it should really be falling over like that.". guess-rule is guess-ale rule. zaptext is "On seeing the [ale], the [alkie] pulls it from your hands and takes a swig, then makes a face. 'Ugh! How could you...?' but after some reflection, says 'You know, I always wanted to give this stuff up. This reminds me how nasty it tasted once I started. Might not be a full cure, but hey, has to be better than Swines['] Wine, right? Hey! You know what? This is nasty enough, it will poison some pawn-spawns outlets.' Filled with purpose, the (ex-)[alkie] walks away.". zaploc is Strangest Range.

this is the guess-ale rule: say "The ale bubbles momentarily and seems to change to a sicklier hue. For whatever reason, you feel less guilty taking it now."

understand "stalest" and "stalest ale" as ale when ale is doubled.

book Dwell'd Well

to say or-well: if score > 0, say ". There's also a way down";

Dwell'd Well is a room. "[well-up].[paragraph break][if score >= 4]The way down is a huge hole in the shape of a D. You could probably just go down and get on with things, but maybe it's not all that simple[else if score is 3]A voice also whispers ... 'Cad!'[paragraph break]And it makes you feel guilty and silly. You thought did well to expand some things by two letters, but it feels so basic now. Perhaps three or even four is the way to go here, for a bit of magic to pass through again[else]It's almost too peaceful here. As if something is not quite ready to happen yet. It's also very plain. You feel a pull from below but see no thatch't hatch to remove or older solders to pull at[end if][if elite lit is in well].[paragraph break]The bookshelf, aka [i]Elite Lit[r], also stands here to distract you, if you need that[end if]."

to say well-up: say "There are three ways to go back up, here: north, southwest, and southeast"

check going down in Dwell'd Well:
	if player is in Dwell'd Well:
		if the score < 3, say "You can't go further down. At least, not now, you can't." instead;
		if the score < 4, say "'Cad ... cad ...' voices say. You need to shake them off." instead;
		if okeydokey-tried is true and apple iie is moot:
			say "Hey, wait. [b]OKEYDOKEY[r] would work now. You should say that, instead." instead;
		say "'Ingoing, O!' you shout as you explore further down...";
		wfak;
		say "[line break]...and you wind up in Saves Ave. It is a nice enough place to live. People seem to appreciate you. Things are okay, for about a week. Then... then, you realize you are just a block over from Raver Ave. It's not so bad at first, but the raves get bigger and bigger as time goes on. Everyone greets the host with a 'Shucks, Huck,' though you're never in a good enough mood to. Not that it's the worst place to live, but you sense you could have done better.";
		end the story finally saying "A 'YAY'";
		the rule succeeds;
	if the score is 0, say "Nothing there, yet." instead;

check going up in Dwell'd Well: say "[well-up]." instead;

check going nowhere in dwell'd well: say "[well-up]." instead;

chapter cad

the cad is a privately-named doubler. it is scenery. xtra-text is "abracadabra". guess-rule is guess-cad rule.

this is the guess-cad rule:
	say "You hear lightning. You wonder briefly if it is about to strike you down because abracadabra isn't a real-real word.";
	wfak;
	say "But you remain standing. Eh, you could probably beat yourself up until Black Friday over whether or not you had enough style points, here. You feel different, as if encompassed by something supernatural.";
	wfak;
	say "Dirt is cleared away to reveal a rod and lid beneath the well. They look plain, but you know the rod must be an erode-rod. As for the lid?";
	wfak;
	say "You incant 'ELIDE!'";
	wfak;
	say "A hole opens up below! It's in the shape of a [b]D[r], which suggests you can just go (D) for down.[paragraph break]And yet ... perhaps you can get style points ... for that, or the mysterious Apple IIe which appeared in the hole. Funny, you'd have expected Le Coleco.[paragraph break]You can also, if you like, distract yourself with a bookshelf labeled (of course) [i]Elite Lit[r].";
	move okeydokey to Dwell'd Well;
	move Apple IIe to Dwell'd Well;
	move Elite Lit to Dwell'd Well;
	now player has ur aura;

the ur aura is a thing. printed name is "ur-aura". description is "It's sort of all about you. It makes you feel empowered."

chapter okeydokey

the okeydokey is a privately-named doubler. it is scenery. "You shouldn't see this.". xtra-text is "okey ?dokey". guess-rule is guess-okeydokey rule.

this is the guess-okeydokey rule:
	if apple iie is not moot:
		say "Yes! You're excited! But you run down too fast. The last thing you see is a princess, whose martial-arts move leaves you doubled over, fatally injured.[run paragraph on][died]Okay, not really. But if you want the good ending, I'm gonna force you to name that ancient Apple IIe game. It's a classic.";
		now okeydokey-tried is true;
		the rule fails;
	say "Yes, it's a bit reflexive and self-referential. But it's worth a try. And, equaly hokey, the well swells![paragraph break]As you climb down, you wind up finding a secret passage that leads ... somewhere new. You feel smart immediately when you arrive, unable to suppress an 'I DID! I DID!'and needing no estates tat with a legible gib. Why, you don't even need to visit the Smiles Mile you see![paragraph break]Of course it's easy to feel all this, walking on ...";
	wfak;
	say "[b]EINSTEIN ST.[r]";
	increment the score;
	follow the notify score changes rule;
	wfak;
	say "Now, where to visit first? Perhaps that restaurant called L'Salsa, or the snack shop [i]Ho Choc[r]. In other establishments, hotshots eat couscous, or maybe mahi mahi, or tout stouts to ward off beriberi. Under a chiquichiqui and mingimingi and rewa-rewa.[paragraph break]You rightly feel like ...";
	end the story finally saying "A MUCKAMUCK!";
	process the shutdown rules;

chapter Elite Lit

Elite Lit is a proper-named scenery. description is "You note [one of]one[or]another[stopping] book title: [one-book][conditional-period]".

check examining Elite Lit for the first time:
	say "Wow! So many books! You have no idea how good they are. Perhaps there is a lost novel of  F. Kafka in here. Or not.[paragraph break]You can keep examining, to skim random titles. There are [number of rows in table of elite lit books] total." instead;

to say conditional-period:
	if skip-period is true:
		now skip-period is false;
	else:
		say ".[no line break]";

to say skp: now skip-period is true;

check taking elite lit: say "Where you're going you won't need books. Or if you do, they'll be the same ones as here, but in better condition." instead;

after examining Elite Lit for the first time:
	say "[i][bracket][b]NOTE[r][i]: there are [number of rows in table of Elite Lit books] total books, and if you don't want to examine continually, you can read the game's source code on GitHub or in the deliverable.  The list is in Random Text.i7x.[close bracket][r][line break]";
	continue the action;

chapter Apple IIe

the Apple IIe is a doubler. it is scenery. xtra-text is "karateka". guess-rule is guess-karateka rule. "The Apple IIe has the word RATE written across it in orange. You obviously don't have time for silly games right now, but if you did, maybe there's a game you could rate!"

this is the guess-karateka rule:
	say "Boy, you sure could go for a game of Karateka now. You're a bit more apprehensive of running into the hole, now, as there may be a princess waiting to deck you on the other side.[paragraph break]As you contemplate this, the Apple IIe, sadly, blows up. But hey, there's always emulation, and save states are handy for if you mess up, anyway.";

volume points

chapter point-check

to point-check:
	increment the score;
	say "[line break][one of]Oh my. A raider-aide, for wherever you need to raid.[or]Another raider-aide![or]The final raider-aide, you assume.[stopping]";
	if the score is 1:
		say "[line break]A passage rumbles open below. It's [if number of visited rooms is 2]off to the side. Maybe you should visit the last place above ground before following it, though[else]in the middle of the three areas you've explored[end if].";
		change down exit of Ur Church to Dwell'd Well;
		change south exit of Ur Church to Dwell'd Well;
		change down exit of Strangest Range to Dwell'd Well;
		change down exit of Ingrowing Row to Dwell'd Well;
		change north exit of Dwell'd Well to Ur Church;
		change southwest exit of Dwell'd Well to Strangest Range;
		change southeast exit of Dwell'd Well to Ingrowing Row;
	if the score is 3:
		say "[line break]'Oo! Noon!' a voice cries. But then a louder one booms 'I ... DERIDER!' The un-suns become less dark, as pink spinks fly by them, and the Ingulfing Gulf wanes and retreats.[paragraph break]The scowls cowl flies off you and blows away.[paragraph break]Yet with its absence you still feel you haven't done enough, or you've gotten lucky. You feel like such a ... well, CAD. Yes. No other word will do, and probably only one word will fix how you feel.";
		moot cowl;
		move cad to well;
	process the notify score changes rule;

book point verbs

the point score check rule is listed first in the for printing a parser error rules.

rule for printing a parser error (this is the point score check rule):
	repeat with UT running through touchable not doubled doublers:
		if the player's command matches the regular expression "\b[xtra-text of UT]\b":
			process guess-rule of UT;
			if the rule failed, the rule succeeds;
			if UT is Apple IIe:
				moot Apple IIe;
				point-check;
			else if UT is a doubler:
				now player has UT;
				now UT is doubled;
				point-check;
			the rule succeeds;
	continue the action;

volume parser errors / meta

report restoring the game: say "Hi! Rehire!";

report undoing an action: say "Edited it!";

rule for printing a parser error when the latest parser error is the i beg your pardon error:
	say "'[one of]Um, be dumb[or]Be-dumbed[in random order]?' a cruel voice mocks.";

rule for printing a parser error when the latest parser error is the not a verb i recognise error:
	say "Nothing magical happens. If you're trying a more generic command, type [b]V[r] or [b]VERBS[r] to see them.";

chapter verbsing

verbsing is an action out of world.

understand the command "verbs" as something new.
understand the command "verb" as something new.
understand the command "v" as something new.

understand "verbs" as verbsing.
understand "verb" as verbsing.
understand "v" as verbsing.

carry out verbsing:
	say "[this-game] has a very simplified parser. You can win just by go in the standard directions, including diagonals, and by guessing magic words based on objects lying around[if cad is in well] or, right now, the voice saying 'Cad.' [else].[end if]";
	say "[line break]Two useful diagnostic commands are [b]SCORE[r] for score, which also gives non-spoilery nudges, asnd [b]I[r] for inventory, though you won't need to carry much. Other meta-commands include [b]ABOUT[r], [b]CREDITS[r], [b]EXT[r] and [b]VERSIONS[r].";
	say "[line break][b]TALK[r]ing is also an option, e.g. [b]T NPC[r], or [b]TALK NPC[r] or [b]TALK TO NPC[r]. No subject is actually needed, since no room has more than one NPC.";
	say "[line break]Some other standard Inform commands are implemented as jokes: for instance, the senses. But none are critical to winning the game.";
	the rule succeeds;

procedural rule: ignore the print final score rule.

volume meta

book get rid of items

to moot (th - a thing): move th to Mo Demode

Mo Demode is a room.

book post-completion

Rule for amusing a victorious player:
	say "Here is a list of things you can try. I didn't keep track of them, so maybe you already did.[paragraph break]";
	say "[b]YES[r], [b]NO[r], [b]SING[r], or [b]WAIT[r]/[b]Z[r] give a fixed response.";
	say "There are also responses for naughty words like [b]BOTHER[r] and the semi-custom verb [b]HIT[r].";
	say "[line break]Some verbs have a generic and specific response:[paragraph break]";
	say "[b]ATTACK[r] gives a slightly different response for the Tormentor Men.";
	say "[b]SMELL[r] is slightly different near the end, with the Apple nearby.";
	say "[b]LISTEN[r] is slightly different in the Church than other places.";
	say "[line break]Empty commands and [b]UNDO[r] also give text.";
	say "Oh, of course, [b]XYZZY[r], too.";

volume redoing diagnostic verbs

chapter inventory

The print standard inventory rule is not listed in the carry out taking inventory rulebook.

carry out taking inventory:
	if scowls cowl is moot, say "You aren't carrying anything. You're even free of that scowls cowl! You can't see anything worth taking. [if score is 3]You just need to find a way out[else]That'll be handy to make the journey down a bit quicker[end if]." instead;
	say "You're wearing that scowls cowl, and it's a [if score is 0]total[else if score is 1]considerable[else]bit of a[end if] drag.";
	if score is 0, say "[line break]You haven't found anything that might help you. Stuff is lying around, but you [if take-try is false]haven't tried to take it yet[else]were unable to just scoop it up[end if]." instead;
	if number of carried doublers > 0, say "[line break]You have found a raider-aide[if number of carried doublers > 1] or [number of carried doublers in words][end if]: [the list of carried doublers].";
	if number of moot doublers > 0, say "[line break]You have successfully used a raider-aide[if number of moot doublers > 1] or [number of moot doublers in words][end if]: [the list of moot doublers].";

chapter score

the announce the score rule is not listed in any rulebook.

carry out requesting the score:
	say "Total score: [score] / [maximum score].[paragraph break]";
	if score is 0, say "You haven't figured out a magic word to say yet, but when you do, you'll get your first point." instead;
	if score is 1, say "You have acquired a raider aide item, [the random carried doubler]." instead;
	if score is 2, say "You have one raider aide item left to pick up." instead;
	if score is 3, say "You don't need any other raider aide. You should [if well is visited]focus on what to do [in-here of well]go to the center, where you haven't been yet[end if]." instead;
	if score is 4, say "You have four points and can just go down, nothing fancy, to win." instead;
	if score is 5, say "You have five points and can now take the fancy way down for an extra special ending. Or just go down for a regular win." instead;
	say "How did you get here? You should've won the game by now." instead;

volume standard rejectable verbs

chapter attacking

the block attacking rule is not listed in any rulebook.

check attacking:
	if noun is tormentor men, say "They'd run you through a slaps-lap, or worse." instead;
	say "Ai! Maim! (Violence is not the keyword.)" instead;

understand the command "hit" as something new.
understand the command "hit [something]" as something new.

understand "hit" as hitting.

hitting is an action applying to one thing.

check hitting: say "You think, pejoratively, of people who really were pretty awful. But you don't need violent fantasies and name-calling right now." instead;

chapter dropping

check dropping: say "You never need to drop anything in [this-game]. Items no longer useful should vanish." instead;

chapter no/yes

the block saying yes rule is not listed in any rulebook.
the block saying no rule is not listed in any rulebook.

check saying no: say "Discord is ... (cor!)" instead;

check saying yes: say "A yay! A yay!" instead;

chapter senses

the block listening rule is not listed in any rulebook.
the block smelling rule is not listed in any rulebook.

check listening:
	if player is in Ur Church, say "There's a gong on somewhere." instead;
	if player is in Dwell'd Well and score is 3, say "'Cad! Cad!'" instead;
	say "Random taunts: '[one of]O tot[or]Er, perp[or]U pop[in random order]!'" instead;

check smelling:
	if player is in well and apple is in well, say "ROM Aroma." instead;
	say "Ethene, then..." instead;

chapter singing

the block singing rule is not listed in any rulebook.

check singing: say "A tune you've never heard before comes in your head. You know it instinctively to be [i]On, Sons[r]." instead;

chapter swearing

the block swearing mildly rule is not listed in any rulebook.
the block swearing obscenely rule is not listed in any rulebook.

check swearing obscenely: say "[one of]Yucky! Uck[or]Sheesh! Ee[or]Shush, U[in random order]! [one of](There's two more. Because I care.)[or][line break][stopping]" instead;

check swearing mildly: try swearing obscenely instead;

chapter waiting

check waiting: say "Meantime? ... ANTI!" instead;

volume meta verbs

chapter abouting

abouting is an action out of world.

understand the command "about" as something new.

understand "about" as abouting.

carry out abouting:
	say "[this-game] was an entry to the EctoComp 2021 Petite Mort. It was originally conceived for 2020, but life got in the way. I'd had bigger plans, which took away from fun small stuff like this.";
	say "[line break]Source control is at [github].";
	say "[line break][b]VERSIONS[r] shows version information. [b]CREDITS[r] shows credits. [b]EXT[r] shows extensions used. Abbreviations work, too.";
	if score is 0:
		say "[line break][this-game] requires word-guessing to win. However, I hope to make the mechanic obvious if you examine or walk around enough. There's a certain pattern to it all.";
	the rule succeeds;

chapter creditsing

creditsing is an action out of world.

understand the command "creds" as something new.
understand the command "cred" as something new.
understand the command "credit" as something new.
understand the command "credits" as something new.

understand "cred" as creditsing.
understand "creds" as creditsing.
understand "credit" as creditsing.
understand "credits" as creditsing.

carry out creditsing:
	say "While there was no time for outside testing, I'd like to thank Olaf Nowacki for moral support. He has an entry in the Petite Mort too! Oh, and the IFComp 2021 authors['] subforum. Several of them entered something, too!";
	say "[line break]I would also like to thank JJ Guest for creating EctoComp, Duncan Bowsman for stepping in and Ruber Eaglenest for running it currently, and itch.io for hosting EctoComp and other comps that help me just remember to play others['] stuff.";
	say "[line break]Attributions for dirt texture in cover art: CC BY-SA 3.0 -- Heath Rezabek -- Vessel CC -- http://vessel.cc[line break]";
	say "[line break]If you have a clever book or whatever to add, mail me at [email] or post an issue at [github].";
	the rule succeeds;

chapter versionsing

chapter renaming what versioning does

section exting

exting is an action out of world.

understand the command "ext" as something new.
understand the command "exts" as something new.

understand "ext" as exting.
understand "exts" as exting.

to showext: (- ShowExtensionVersions(); -)

carry out exting:
	showext;
	the rule succeeds;

section redefine version

versioning is an action out of world.

understand the command "ver" as something new.
understand the command "vers" as something new.
understand the command "version" as something new.
understand the command "versions" as something new.

understand "version" as versioning.
understand "versions" as versioning.

carry out versioning:
	say "Version 1 was released October 30, 2021 to Itch.io for the yearly EctoComp competition, Petite Mort division.";
	say "Version 2 was released February 28, 2025 to Itch.io with no new technical features, but with minor bug fixes and also 'appropriate' text that trickled in over the years. Since then, Martin Amis, whose name cued Hamish, had left this world for over a year. RIP.";
	say "Version 3 was released March 1, 2025 to Itch.io with the Elite Lit/bookshelf in the final area containing random books.";
	say "[line break]One more update with cutesy random text is planned, mostly names. Beyond that, nothing except for bug fixes.";
	the rule succeeds;

report versioning: say "To see extensions used in [this-game] and Inform's internal release data, type [b]EXT[r] or [b]EXTS[r].";

chapter xyzzying

xyzzying is an action out of world.

understand the command "xyzzy" as something new.

understand "xyzzy" as xyzzying.

to say died: say "[paragraph break][b]*** You have died ***[r][paragraph break]"

carry out xyzzying:
	say "Hark! Sharks![died]But wait, you were resurrected! Someone raised a...[paragraph break]... puts on shades ...[paragraph break]fund of undo!";
	the rule succeeds;

volume unsorted

chapter tsarist saris

the saris are a thing.
