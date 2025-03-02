Version 1/250301 of Psyops Yo Definitions by Andrew Schultz begins here.

"This encompasses small stubs, particularly <to decide which> and <definition> that would clutter up the main code and be hard to find otherwise. You can see what could or should be sent here with def.py."

volume main definitions

chapter room stub

to say in-here of (rm - a room):
	if rm is not visited:
		say "somewhere";
	else if player is in rm:
		say "here";
	else:
		say "in [rm]";

chapter directions

definition: a direction (called d) is viable:
	if the room d of location of player is nowhere, no;
	yes;

definition: a direction (called d) is viable:
	if the room d of location of player is nowhere, no;
	yes;

chapter people

definition: a person (called pe) is npcish:
	if pe is the player, no;
	yes;

chapter things

definition: a thing (called th) is moot:
	if th is in Mo Demode, yes;
	no;

volume types

a randtexter is a kind of thing. a randtexter has a table name called randtable. a randtexter has text called firsttext. a randtexter has text called looptext. a randtexter has a number called randindex. a randtexter is usually scenery.

a randtexter has a truth state called random-seen.

to say next-text of (rt - a randtexter):
	increment randindex of rt;
	choose row (randindex of rt) in (randtable of rt);
	say "[randtext entry]";
	if randindex of rt is (number of rows in (randtable of rt)):
		now randindex of rt is 0;
		now note-rand-loop is true;

check examining a randtexter for the first time:
	if firsttext of noun is empty, continue the action;
	say "[firsttext of noun][line break]" instead;

report examining a randtexter when note-rand-loop is true (this is the randtexter loop report rule):
	say "[looptext of noun][line break]";
	now note-rand-loop is false;
	continue the action;

report examining a randtexter:
	if random-seen of noun is true, continue the action;
	now random-seen of noun is true;
	say "[i][bracket][b]NOTE[r][i]: there are [number of rows in (randtable of noun) in words] [category of noun] to see with [the noun], [one of]and if you don't want to examine continually, you can read the game source on GitHub or in the deliverable. The list is in Psyops Yo Random Text.i7x[or][stopping].[close bracket][r][line break]";
	continue the action;

to say category of (rt - a randtexter):
	if rt is elite lit:
		say "books";
	else:
		say "names";

volume string constants

to say email: say "blurglecruncheon@gmail.com"

to say github: say "https://github.com/andrewschultz/psyops-yo"

volume unsorted

Psyops Yo Definitions ends here.

---- DOCUMENTATION ----
