Version 1/201028 of Psyops Yo Tests by Andrew Schultz begins here.

"Psyops Yo Tests, both with TEST command and testing specific things."

volume basic parser tests

test u1 with "escapes/ne/stalest/se/mahatma/w/"

test u2 with "e/mahatma/nw/stalest/sw/escapes/e"

test mid with "d/abracadabra"

test e1 with "d"

test e2 with "okeydokey"

test e3 with "karateka/okey dokey"

test w1 with "test u1/test mid/test e1".

test w2 with "test u2/test mid/test e2".

test w3 with "test u1/test mid/test e3".

volume testshow

chapter tshing

tshing is an action out of world.

understand the command "tsh" as something new.

understand "tsh" as tshing.

carry out tshing:
	test-show;
	the rule succeeds;

to test-show: (- testshow(); -)

Include (-

[ testshow ;
  print "Testing commands are listed below. U* starts in a different room and completes the first area. E* is endgames with various endings. Wx tries Ux with Ex. I did not try all nine combinations, since U and E test runs are independent.^^" ;
  TestScriptSub();
];

-)

volume full random

chapter churning

churning is an action out of world applying to one visible thing.

understand the command "churn" as something new.

understand "churn" as churning.
understand "churn [any thing]" as churning.

a randtexter can be churned. a randtexter is usually not churned.

carry out churning:
	if noun is not a randtexter:
		say "You need a random text generating object. Here is the list:";
		try churnnuming 0;
		the rule fails;
	move noun to location of player;
	if noun is not churned and firsttext of noun is not empty:
		say "Initial examination to display firsttext property:";
		try examining noun;
	now noun is churned;
	let count be 0;
	while count < number of rows in randtable of noun:
		increment count;
		say "([count] of [number of rows in randtable of noun], not shown in release mode)";
		try examining noun;
	the rule succeeds;

to list-unchurned:
	if number of not churned randtexters is 0:
		say "You've already churned everything once, though.";
	else:
		say "Left to churn: [the list of not churned randtexters].";

Rule for printing a parser error when the latest parser error is the noun did not make sense in that context error:
	if action-to-be is the churning action:
		say "You can only churn [the list of randtexters].";
		list-unchurned;
		the rule succeeds;
	continue the action;

section churnnum

churnnuming is an action out of world applying to one number.

understand "churn [number]" as churnnuming.

carry out churnnuming:
	let rtlist be the list of randtexters;
	if number understood is 0:
		repeat with X running from 1 to number of entries in rtlist:
			say "[X]. [entry X of rtlist].";
		the rule succeeds;
	if number understood < 0 or number understood > number of entries in rtlist:
		say "You need to type 0 for a list or 1-[number of entries in rtlist].";
		the rule succeeds;
	try churning entry (number understood) of rtlist;

Psyops Yo Tests ends here.

---- DOCUMENTATION ----
