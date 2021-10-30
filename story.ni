"Psyops, Yo" by MP Kempke and Hamish Amis

volume definitions

include Trivial Niceties by Andrew Schultz.

include Psyops Yo Tests by Andrew Schultz.

the description of the player is "Not dazzling, but frankly, you're relieved not to be wearing a tutu or muumuu.".

a doubler is a kind of thing. a doubler can be doubled. a doubler is usually not doubled. a doubler has text called xtra-text.

a doubler has a rule called a guess-rule.

a doubler has text called zaptext. a doubler has a room called zaploc.

before printing the name of a doubler (called dub): if dub is doubled, say "[xtra-text of dub] ".

check taking a doubler: say "No, you don't see any reason to take [the noun] as-is. Too plain. Maybe you have a way to jazz it up." instead;

a person has text called talk-text.

definition: a direction (called d) is viable:
	if the room d of location of player is nowhere, no;
	yes;

to say igulf: say "The Ingulfing Gulf surrounds you every way except [list of viable directions]"

every turn when map region of location of player is Top Stops (this is the check returned item every turn rule):
	repeat with UT running through doublers enclosed by the player:
		if zaploc of ut is location of player:
			say "[zaptext of UT][line break]";
			moot ut;
			let F be random npcish person in location of player;
			moot random npcish person in location of player;
			continue the action;
	continue the action;

definition: a person (called pe) is npcish:
	if pe is the player, no;
	yes;

section room definitions

a room has text called clue-text.

to say unsuns:
	if un suns are not moot, say "The un-suns hang menacingly in the sky, blotting things out and causing general depression and dreariness. ";

volume when play begins

when play begins:
	say "You'd have liked a nice end-of-month trip to the discount warehouse without any hiccups. Was that too much to ask? Apparently it was. Costco St. seemed quiet enough, until that horribly ghostly voice 'Why save a few dollars ... when you could save ... the TOP STOPS?'";
	wfak;
	say "You should have known the ghost was not going to help you save a LOT of dollars instead, but you couldn't resist. Costco St. took a dark turn, and you wound up somewhere much darker.";
	wfak;
	say "The ghost pointed to the dark blobs in the sky. 'Un-Suns!' Then to the distance, where the sound spoke for itself. A yowly owl! Wan swans! 'It sits!' cried the ghost, un-grammatically. You ask for more help, but the ghost is already fading away with an 'I.e. ... DIED!'";
	move un suns backdrop to all rooms in Top Stops;

the un suns are a backdrop. "They're totally, like, dark and gloomy and stuff. Just the thought of them makes you think, 'O, wow!'"

volume map basics

check going nowhere: say "You try to, but you realize you might step into ... the INGULFING GULF. You can, however, go [list of viable directions]." instead;

definition: a direction (called d) is viable:
	if the room d of location of player is nowhere, no;
	yes;

Top Stops is a region.

Ingoing O is a region.

talking is an action applying to one thing.

understand "t [something]" and "talk [something]" as talking.

check talking a person: say "[talk-text of noun][line break]" instead;

check talking: say "You don't need to talk to anyone or anything, though people may give some silly response." instead;

volume Top Stops

book Strangest Range

Strangest Range is a room in Top Stops. "[unsuns]Passages lead north[if score < 3] (or northeast)[else], northeast[end if] and east[or-well]."

chapter alkie

the Stalkiest Alkie is a person in Strangest Range. "A stalkiest alkie paces back and forth, looking for something here and not looking for it.". description is "Like so many people who drink a lot, the Alkie may both want a drink and want an excuse never to want a drink again.".

chapter cap

the cap is a doubler in Strangest Range. xtra-text of cap is "escapes". "A cap sits on the ground here. It seems nailed down. Maybe there is a way to free it.". description is "The cap seem to be stuck in place.". guess-rule is guess-cap rule. zaploc is Ingrowing Row. zaptext is "The Tormentor Men squint at your escapes cap. They start with the usual insults, but you deflect them. They're actually a bit impressed. They say it must be the cap, but the cap ... escapes after a breeze blows it away. The Tormentor Men go chasing after it, because they can't have anyone else wearing it and failing to heed them. The cap blows far away, taking the Tormentor Men with."

this is the guess-cap rule: say "The cap jumps up into your hands!"

book Ingrowing Row

Ingrowing Row is east of Strangest Range. It is in Top Stops. "You seem worried about violence here. Passages lead north (or northwest) and west[or-well]."

chapter Tormentor Men

The Tormentor Men are plural-named people in Ingrowing Row. "Tormentor men stand here. They aren't laughing at you ... at least not while you're looking.". talk-text is "'Derider?! I?!' they all respond."

chapter hat

the hat is a doubler in Ingrowing Row. xtra-text of hat is "mahatma". guess-rule is guess-hat rule. "A hat, not looking very special, lies here.". description is "The hat is [if hat is doubled]much more impressive now it's a mahatma hat[else]unimpressive, but you think it could be so much more. You hope, anyway. You don't have a lot to work with, here[end if].". zaploc is Ur Church. zaptext is "The [aide] looks at the hat and shrugs. You wonder if you should be the one wearing it, but no, it seems to fit them better. They thank you, bless you, and then go out to spread decency and kindness to others."

this is the guess-hat rule: say "The hat suddenly looks a little more dignified."

book Ur Church

Ur Church is northeast of Strangest Range. It is north of Strangest Range. It is in Top Stops. printed name is "Ur-Church". "Passages lead southwest and southeast[or-well]."

Ur Church is north of Ingrowing Row. It is northwest of Ingrowing Row.

check going in Ur Church:
	if noun is east, try going southeast instead;
	if noun is west, try going southwest instead;

chapter aide

the Staidest Aide is a person in Ur Church. "A staidest aide stands around here, touching their head as if they need to put something on it to TRULY seem official.". description is "The Staidest Aide looks back at you, trying to tip a non-existent cap and failing.". talk-text is "'Beg, un-begun.'".

chapter Stalest Ale

the Ale is a doubler in Ur Church. xtra-text is "stalest". description is "[if ale is doubled]It doesn't look especially menacing, but you really don't want to drink it[else]It's plain, as if it could become something else, or assume a more useful quality, for better or worse[end if].". "Some ale lies here. As-is, it's a bit plain to take. Maybe it can become more palatable, or less.". guess-rule is guess-ale rule. zaptext is "On seeing the [ale], the [alkie] pulls it from your hands and takes a swig, then makes a face. 'Ugh! How could you...?' but after some reflection, says 'You know, I always wanted to give this stuff up. This reminds me how nasty it tasted once I started. Might not be a full cure, but thanks.' Relieved, the [alkie] walks away.". zaploc is Strangest Range.

this is the guess-ale rule: say "The ale bubbles momentarily and seems to change to a sicklier hue. For whatever reason, you feel less guilty taking it now."

understand "stalest" and "stalest ale" as ale when ale is doubled.

book Dwell'd Well

to say or-well: if score > 0, say ". There's also a way down";

Dwell'd Well is a room. "[well-up].[paragraph break][if score >= 4]The way down is a huge hole in the shape of a D. You could probably just go down and get on with things, but maybe it's not all that simple[else if score is 3]A voice also whispers ... 'Cad!'[paragraph break]And it makes you feel guilty and silly. You thought did well to expand some things by two letters, but it feels so basic now. Perhaps three or even four is the way to go here, for a bit of magic to pass through again[else]It's almost too peaceful here. As if something is not quite ready to happen yet[end if]."

to say well-up: say "There are three ways to go back up, here: north, southwest, and southeast"

check going down in Dwell'd Well:
	if player is in Dwell'd Well:
		if the score < 3, say "You can't go further down. At least, not now, you can't." instead;
		if the score < 4, say "'Cad ... cad ...' voices say. You need to shake them off." instead;
		say "'Ingoing, O!' you shout as you explore further down...";
		wfak;
		say "...and you wind up in Saves Ave. It is a nice enough place to live. People seem to appreciate you. Things are okay, for about a week. Then... then, you realize you are just a block over from Raver Ave. It's not so bad at first, but the raves get bigger and bigger as time goes on. Everyone greets the host with a 'Shucks, Huck,' though you're never in a good enough mood to. Not that it's the worst place to live, but you sense you could have done better.";
		end the story;
		the rule succeeds;
	if the score is 0, say "Nothing there, yet." instead;

check going up in Dwell'd Well: say "[well-up]." instead;

check going nowhere in dwell'd well: say "[well-up]." instead;

the cad is a privately-named doubler in Dwell'd Well. it is scenery. xtra-text is "abracadabra". guess-rule is guess-cad rule.

this is the guess-cad rule:
	say "You hear lightning. A hole opens beneath the well. You feel momentarily silly abracadabra isn't a real-real word, but you could probably beat yourself up until Black Friday over whether or not you had enough style points, here. A hole opens up below! It's in the shape of a [b]D[r], which suggests you can just go (D) for down.[paragraph break]And yet ... perhaps you can get style points ...";
	move okeydokey to Dwell'd Well;

the okeydokey is a privately-named doubler. it is scenery. "You shouldn't see this.". xtra-text is "okey ?dokey". guess-rule is guess-okeydokey rule.

this is the guess-okeydokey rule:
	say "Yes, it's a bit reflexive and self-referential. But it's worth a try. As you climb down, you wind up finding a secret passage that leads ... somewhere new. You feel smart immediately when you arrive. You feel you will discover many new things. That's only natural, considering you've just made it to...[paragraph break][b]EINSTEIN ST.[r]";
	end the story finally saying "I DID! I DID!";
	process the every turn rules;

volume points

chapter point-check

to point-check:
	increment the score;
	if the score is 1:
		say "A passage rumbles open below. It's [if number of visited rooms is 2]off to the side. Maybe you should visit the last place above ground before following it, though[else]in the middle of the three areas you've explored[end if].";
		change down exit of Ur Church to Dwell'd Well;
		change south exit of Ur Church to Dwell'd Well;
		change down exit of Strangest Range to Dwell'd Well;
		change down exit of Ingrowing Row to Dwell'd Well;
		change north exit of Dwell'd Well to Ur Church;
		change southwest exit of Dwell'd Well to Strangest Range;
		change southeast exit of Dwell'd Well to Ingrowing Row;
	if the score is 3:
		say "'Oo! Noon!' a voice cries. But then a louder one booms 'I ... DERIDER!' And yet you still feel you haven't done enough, or you've gotten lucky. You feel like such a ... well, CAD. Yes. No other word will do, and probably only one word will fix how you feel.";
	process the notify score changes rule;

book point verbs

rule for printing a parser error:
	repeat with UT running through touchable not doubled doublers:
		if the player's command matches the regular expression "\b[xtra-text of UT]\b":
			process guess-rule of UT;
			now player has UT;
			now UT is doubled;
			point-check;
			the rule succeeds;
	continue the action;

volume random

procedural rule: ignore the print final score rule.

volume meta

to moot (th - a thing): move th to Mo Demode

definition: a thing (called th) is moot:
	if th is in Mo Demode, yes;
	no;

Mo Demode is a room.

volume verbs

check swearing obscenely: say "[one of]Yucky! Uck[or]Sheesh! Ee[or]Shush, U[in random order]! [one of](There's two more. Because I care.)[or][line break][stopping]" instead;

check swearing mildly: try swearing obscenely instead;

the block swearing mildly rule is not listed in any rulebook.
the block swearing obscenely rule is not listed in any rulebook.

chapter xyzzying

xyzzying is an action out of world.

understand the command "xyzzy" as something new.

understand "xyzzy" as xyzzying.

carry out xyzzying:
	say "Hark! Sharks!";
	end the game in death;
	the rule succeeds;

volume unsorted

chapter tsarist saris

the saris are a thing.
