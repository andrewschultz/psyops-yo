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

volume string constants

to say email: say "blurglecruncheon@gmail.com"

to say github: say "https://github.com/andrewschultz/psyops-yo"

volume unsorted

Psyops Yo Definitions ends here.

---- DOCUMENTATION ----
