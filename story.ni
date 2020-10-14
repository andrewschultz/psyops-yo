"Psyops, Yo" by Andrew Schultz

volume the map

check going nowhere: say "You try to, but you realize you might step into ... the INGULFING GULF." instead;

book Strangest Range

Strangest Range is a room. "Passages lead north (or northeast) and east[or-well]."

book Attentat Tent

Attentat Tent is east of Strangest Range. "Passages lead north (or northwest) and west[or-well]."

book Ur Church

Ur Church is northeast of Strangest Range. It is north of Strangest Range. printed name is "Ur-Church". "Passages lead southwest and southeast[or-well]."

Ur Church is north of Attentat Tent. It is northwest of Attentat Tent.

check going in Ur Church:
	if noun is east, try going southeast instead;
	if noun is west, try going southwest instead;

book Dwell'd Well

to say or-well: if score > 0, say ". There's also a way down";

Dwell'd Well is a room.

check going up in Dwell'd Well: say "There are three ways to go up, ere: north, southwest, and southeast." instead;

check going down:
	if player is in Dwell'd Well, say "You can't go further down." instead;
	if the score is 0, say "Nothing there, yet." instead;

chapter point-check

to point-check:
	if the score is 0:
		say "A passage rumbles open below. It's in the middle of the three areas you could have explored before.";
		change down exit of Ur Church to Dwell'd Well;
		change down exit of Strangest Range to Dwell'd Well;
		change down exit of Attentant Tent to Dwell'd Well;
		change north exit of Dwell'd Well to Ur Church;
		change southwest exit of Dwell'd Well to Strangest Range;
		change southeast exit of Dwell'd Well to Attentant Tent;

volume verbs

check swearing obscenely: say "Sheesh! Ee!" instead;

check swearing mildly: try swearing obscenely instead;

the block swearing mildly rule is not listed in any rulebook.
the block swearing obscenely rule is not listed in any rulebook.
