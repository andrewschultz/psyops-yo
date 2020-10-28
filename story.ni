"Psyops, Yo" by Andrew Schultz

volume definitions

include Trivial Niceties by Andrew Schultz

a doubler is a kind of thing. a doubler can be doubled. a doubler is usually not doubled. a doubler has text called xtra-text.

a doubler has a rule called a guess-rule.

a doubler has text called zaptext. a doubler has a room called zaploc.

before printing the name of a doubler (called dub): if dub is doubled, say "[xtra-text of dub] ".

check taking a doubler: say "No, you don't see any reason to take [the noun]. Too plain. Maybe you have a way to jazz it up." instead;

a person has text called talk-text.

definition: a direction (called d) is viable:
	if the room d of location of player is nowhere, no;
	yes;

to say igulf: say "The Ingulfing Gulf surrounds you every way except [list of viable directions]"

to say hexround:
	say "You can skirt the Attentat Tent in the center by going [list of viable directions]"

a room has a direction called cross-dir.

to say psgs: say "[if number of viable directions is 0]There aren't any passages out. There should be, but there aren't[else if number of viable directions is 1]You can only go [random viable direction][else]Passages lead [list of viable directions][end if]"

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

volume map basics

check going nowhere: say "You try to, but you realize you might step into ... the INGULFING GULF." instead;

Top Stops is a region.

Ingoing O is a region.

talking is an action applying to one thing.

understand "t [something]" and "talk [something]" as talking.

check talking a person: say "[talk-text of noun][line break]" instead;

check talking: say "You don't need to talk to anyone or anything, though people may give some silly response." instead;

volume Top Stops

book Strangest Range

Strangest Range is a room in Top Stops. "Passages lead north (or northeast) and east[or-well]."

chapter alkie

the Stalkiest Alkie is a person in Strangest Range. "A stalkiest alkie paces back and forth, looking for something here and not looking for it.". description is "Like so many people who drink a lot, the Alkie may both want a drink and want an excuse never to want a drink again.".

chapter cap

the cap is a doubler in Strangest Range. xtra-text of cap is "escapes". "A cap sits on the ground here. It seems nailed down. Maybe there is a way to free it.". description is "The cap seem to be stuck in place.". guess-rule is guess-cap rule. zaploc is ingrowing row. zaptext is "The Tormentor Men squint at your escapes cap. They're actually a bit impressed. They start with the usual insults, but you deflect them. They say it must be the cap, but the cap ... escapes after a breeze blows it away. You forget to go running after it as the Tormentor Men insult you more, but you've become immune. They give up and go away."

this is the guess-cap rule: say "The cap jumps up into your hands!"

book Ingrowing Row

Ingrowing Row is east of Strangest Range. It is in Top Stops. "You seem worried about violence here. Passages lead north (or northwest) and west[or-well]."

chapter Tormentor Men

The Tormentor Men are plural-named people in Ingrowing Row. "Tormentor men stand here. They aren't laughing at you ... at least not while you're looking.". talk-text is "'Derider?! I?!' they all respond."

chapter hat

the hat is a doubler in Ingrowing Row. xtra-text of hat is "mahatma". guess-rule is guess-hat rule. "A hat, not looking very special, lies here.". description is "The hat is [if hat is doubled]much more impressive now it's a mahatma hat[else]unimpressive, but you think it could be so much more. You hope, anyway. You don't have a lot to work with, here[end if].". zaploc is Ur Church. zaptext is "The [aide] looks at the hat and shrugs. You wonder if you should be the one wearing it, but no, it seems to fit them better. They thank you."

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

the Ale is a doubler in Ur Church. xtra-text is "stalest". description is "[if ale is doubled]It doesn't look especially menacing, but you really don't want to drink it[else]It's plain, as if it could become something else, or assume a more useful quality, for better or worse[end if].". "Some ale lies here. As-is, it's a bit plain to take. Maybe it can become more palatable, or less.". guess-rule is guess-ale rule. zaptext is "On seeing the [ale], the [alkie] pulls it from your hands and takes a swig, then makes a face. 'Ugh! How could you...?' but after some reflection, says 'You know, I always wanted to give this stuff up. This reminds me how nasty it tasted once I started. Might not be a full cure, but thanks.'". zaploc is Strangest Range.

this is the guess-ale rule: say "The ale bubbles momentarily and seems to change to a sicklier hue. For whatever reason, you feel less guilty taking it now."

understand "stalest" and "stalest ale" as ale when ale is doubled.

book Dwell'd Well

to say or-well: if score > 0, say ". There's also a way down";

Dwell'd Well is a room. "[well-up].[paragraph break][if score is 3]A voice also whispers ... 'Cad!'[paragraph break]And it makes you feel guilty and silly. You thought did well to expand some things by two letters, but it feels so basic now. Perhaps three or even four is the way to go here, for a bit of magic to pass through again."

to say well-up: say "There are three ways to go back up, here: north, southwest, and southeast"

check going nowhere in dwell'd well: say "[well-up]." instead;

check going up in Dwell'd Well: say "[well-up]." instead;

check going down:
	if player is in Dwell'd Well:
		if the score < 3, say "You can't go further down. At least, not now, you can't." instead;
		say "'Ingoing, O!' you shout as you explore further down...";
		move player to Ehs Ehs;
	if the score is 0, say "Nothing there, yet." instead;

the cad is a privately-named doubler. it is scenery. xtra-text is "abracadabra". guess-rule is guess-cad rule.

this is the guess-cad rule:
	say "You hear lightning. A hole opens beneath the well. You feel momentarily silly abracadabra isn't a real-real word, but you could probably beat yourself up until Black Friday over whether or not you had enough style points, here. You don't see much to do here, so you slip off to...";
	move player to Ehs Ehs;

chapter point-check

to point-check:
	increment the score;
	if the score is 1:
		say "A passage rumbles open below. It's [if number of visited rooms is 2]off to the side. Maybe you should visit the last place above ground before following it, though[else]in the middle of the three areas you've explored[end if].";
		change down exit of Ur Church to Dwell'd Well;
		change down exit of Strangest Range to Dwell'd Well;
		change down exit of Ingrowing Row to Dwell'd Well;
		change north exit of Dwell'd Well to Ur Church;
		change southwest exit of Dwell'd Well to Strangest Range;
		change southeast exit of Dwell'd Well to Ingrowing Row;
	if the score is 3, move cad to dwell'd well;
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
	if location of player is not hex-ok:
		if the player's command matches the regular expression "\b[word-to-include of location of player]\b":
			say "[guess-right-text of location of player][line break]";
			point-check;
			now location of player is hex-ok;
			if hexcount is 6, say "A hidden metro-tromometer beeps. As you locate it, you hear a shattering. The barrier to the center of the hexagon becomes less opaque and then falls. You can go the ground behind it crumbles. But through it, you do not see a gaping pit, but a shiny new place to go. Full of others who enjoy thinking up or about this sort of weird puzzle.";
			the rule succeeds;
	continue the action;

to decide which number is hexcount: decide on number of hex-ok rooms;

to decide which direction is hexdir: decide on the best route from the location of the player to Einstein St;

volume Ingoing O

rule for printing the name of a hex-ok hexroom: say "[word-to-include of the item described in title case]"

a hexroom is a kind of room. a hexroom has text called word-to-include. a hexroom has text called guess-right-text. a hexroom can be hex-ok. a hexroom is usually not hex-ok.

Ehs Ehs is a hexroom. "This is the west room in what seems to be a hexagonal ring. [hexround].". printed name is "Ehs, Ehs". word-to-include is "sheesh". guess-right-text is "You effectively dismiss the eh's with something more powerful. You're a bit sick of not being able to go [hexdir], and a swift kick at the opaque barrier seems to make it bend a bit."

Prep Area is a hexroom. it is northeast of Ehs Ehs. "This is the northwest room in what seems to be a hexagonal ring. [hexround].". word-to-include is "teammate". guess-right-text is "Someone comes along and bangs at the barrier [hexdir]. You hear a small cracking."

Grain Grain is a hexroom. it is east of Prep Area. "This is the northeast room in what seems to be a hexagonal ring. [hexround].". printed name is "Grain, Grain". word-to-include is "reappear". guess-right-text is "You back out a bit, then reappear."

Meta Meat is a hexroom. it is southeast of Ehs Ehs. "This is the southwest room in what seems to be a hexagonal ring. [hexround].". word-to-include is "teammate". guess-right-text is "You find the guts to turn the place into something more gross, but manageable."

Tines Inset is a hexroom. it is east of Meta Meat. "This is the southeast room in what seems to be a hexagonal ring. [hexround].". word-to-include is "intestines". guess-right-text is "The grain turns into a court of law, but since you have no guilt, you are free to go."

Pechan Pechan is a hexroom. it is southeast of Grain Grain. It is northeast of Tines Inset. "This is the west room in what seems to be a hexagonal ring. [hexround].[paragraph break]Oh, a pechan is an odd word for stomach. You may need luck to solve the secret of this room.". word-to-include is "happenchance". guess-right-text is "You suddenly find a lucky way out."

Einstein St is east of Ehs Ehs. It is southeast of Prep Area. It is southwest of Grain Grain. It is northeast of Meta Meat. It is northwest of Tines Inset.

check going to Einstein St:
	if hexcount < 6, say "A barrier pushes you back." instead;
	say "You stride nervously [hexdir], wondering who or what you will see. People all around are forming or creating logic puzzles. There is no war between crossword, Sudoku, Kakuro general logic-problem aficionados or people who like odder, weirder puzzles. There's something for everyone, and everyone is doing their own thing. People can even rate Karateka! It's all quite nice. But of course it can't last forever. It might get boring. Fortunately, an estates tat (with a very legible gib) explains the magic words 'meantime, anti' means you need to summon escapees['] capes to go back to the real world, and 'Rehire! Hi!' forms a request to come back. Which might not succeed. But eventually, when you really need the break, you will get it.[paragraph break]Oh, wait. I forgot to tell you the name of this place. It is:";
	end the story finally saying "EINSTEIN ST."

volume meta

to moot (th - a thing): move th to Mo Demode

definition: a thing (called th) is moot:
	if th is in Mo Demode, yes;
	no;

Mo Demode is a room.

volume verbs

check swearing obscenely: say "Yucky! Uck!" instead;

check swearing mildly: try swearing obscenely instead;

the block swearing mildly rule is not listed in any rulebook.
the block swearing obscenely rule is not listed in any rulebook.

volume unsorted

chapter tsarist saris

the saris are a thing.

