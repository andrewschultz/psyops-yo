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

volume full random

chapter bksing

bksing is an action out of world.

understand the command "bks" as something new.

understand "bks" as bksing.

carry out bksing:
	move elite lit to location of player;
	let count be 0;
	while count < number of rows in table of elite lit books:
		increment count;
		say "[count] of [number of rows in table of elite lit books]:";
		try examining elite lit;
	the rule succeeds;

Psyops Yo Tests ends here.

---- DOCUMENTATION ----
