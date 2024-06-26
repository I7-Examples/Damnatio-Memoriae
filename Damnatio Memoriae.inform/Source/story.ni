"Damnatio Memoriae" by Emily Short

The story creation year is 2006.

The story headline is "A story of the Lavori d'Aracne". The story genre is "Historical". The story description is "14 AD. Agrippa Postumus, grandson of the recently-deceased Augustus, tries to avoid death at the hands of the next emperor, Tiberius. At his disposal: a couple of old manuscripts, a lamp, and a recalcitrant slave. And a powerful knowledge of the Art of Venus Genetrix, of course -- the magic eventually known as the Lavori d'Aracne.

Damnatio Memoriae belongs to a series with the author's previous game Savoir-Faire; though it can stand alone, the game's mechanics will make most sense to players already familiar with that work. 

It is a fast, timed game, taking only a few minutes to play once, but probably requiring multiple attempts to bring to a satisfactory conclusion." The release number is 7.

Release along with cover art, 
	the introductory booklet, 
	a file of "Game Overview" called "Introduction.pdf", 
	[a solution,]
	a file of "Walkthroughs" called "Walkthrough.txt",
	a file of "Making of..." called "Overview.html",
	the source text, 
	and a website.

Volume 1 - Linkages

Book 1 - Two Kinds of One-to-One Relationship

Chapter 1 - Affecting

The blank is a thing. A thing can be important or unimportant. A thing is usually important. The blank is unimportant.

Affecting relates one thing to one thing.

The verb to affect (he affects, they affect, he affected, it is affected, he is affecting) implies the affecting relation.

Definition: a thing is linked if it affects something or something affects it. 

Definition: a thing is unlinked if it is not linked.

Chapter 2 - Protecting

Protection relates one thing to one thing.

The verb to protect (he protects, they protect, he protected, it is protected, he is protecting) implies the protection relation.

Before burning the player when the player is protected by Clemens:
	say "You hold the flame to your arm as long as you can stand. Clemens begins to thrash back and forth, in the grip of some delirium, but doesn't wake.".

Before burning something which is protected by an important impervious thing (called the protector):
	say "[if the noun is the player]You barely feel anything, thanks to[otherwise][The noun] resists flame, thanks to its link with[end if] [the protector]." instead.
	
Before attacking something which is protected by an important sturdy thing (called the protector):
	if the noun is a person, continue the action;
	say "[The noun] fails to shatter, thanks to its link with [the protector]." instead.

After printing the name of something (called slave) which is affected by something (called master) while taking inventory: 
	if slave affects the master, do nothing;
	otherwise say " (enslaved)";

After printing the name of something (called master) which affects something important (called slave) while taking inventory:  
	if slave affects the master, say " ([if the slave protects the master]reverse [end if]linked)";
	otherwise say " (controlling)";
	
Book 2 - Resembling, a Various-to-Various relation
[Link checking already takes into account many ways for one thing to be like another thing, but this allows us to specify explicit resemblances which help override those rules.]

Similarity relates various things to various things.

The verb to resemble (he resembles, they resemble, he resembled, it is resembled) implies the similarity relation.

Book 3 - Link Actions

Chapter 1 - Link

Understand "link [something] to [something]" as linking it to.

Linking it to is an action applying to two things.

Carry out linking it to:
	now the noun protects blank;
	now the second noun protects blank;
	now the noun affects the second noun;
	now the second noun affects the noun;

Report linking it to:
	say "You build a mutually-effective link between [the noun] and [the second noun].".
	
Linking something to something is labor.
	
Chapter 2 - Reverse Link

Understand "reverse link [something] to [something]" as reverse linking it to. Understand "reverse [something] to [something]" as reverse linking it to. Understand "reverse-link [something] to [something]" as reverse linking it to.

Reverse linking it to is an action applying to two things.

Carry out reverse linking it to:
	now the noun affects the second noun;
	now the second noun affects the noun;
	now the noun protects the second noun;
	now the second noun protects the noun.
	
Report reverse linking it to:
	say "You build a mutually-effective, and protective, link between [the noun] and [the second noun]";
	if the noun is impervious or the second noun is impervious:
		say ". Both are now resistant to fire";
		if noun is sturdy or the second noun is sturdy:
			say " and casual smashing.";
		otherwise:
			say ".";
	otherwise:
		if noun is sturdy or the second noun is sturdy:
			say ". Both are now resistant to being smashed.";
		otherwise:
			say "."
	
After reverse linking a person to a person:
	say "You reverse link [the noun] to [the second noun]. While one of you lives, so does the other.";
	if the noun incriminates the second noun:
		now the noun does not incriminate the second noun;
	if the second noun incriminates the noun:
		now the second noun does not incriminate the noun.
 
Reverse linking something to something is labor.

Chapter 3 - Enslave

Understand "enslave [something] to [something]" as enslaving it to. Understand "slave link [something] to [something]" as enslaving it to. Understand "martyr link [something] to [something]" as enslaving it to. Understand "slave [something] to [something]" as enslaving it to. Understand "slave-link [something] to [something]" as enslaving it to.

Enslaving it to is an action applying to two things.

Carry out enslaving it to:
	now the noun protects blank;
	now the second noun protects blank;
	now the noun affects blank;
	now the second noun affects the noun; 

Report enslaving something to the player:
	say "Now you control [the noun]." instead.

Report enslaving it to:
	say "Now [the second noun] controls [if the noun is the player]you: a risky proposition[otherwise][the noun][end if]."
	
Enslaving something to something is labor.
	
After enslaving Clemens to the player:
	say "You build the link, enslaving Clemens to yourself. It is an expedient Augustus has been using for years: now any attempt upon your life will instead kill your slave."

After enslaving a snoring Clemens to something which is not a person:
	now Clemens is silent;
	now Clemens does not incriminate the player;
	say "Instantly Clemens is silent. And very still. Sort of statue-like, in fact."
	
Before enslaving the player to something which is not a person:
	say "That would be a very bad idea, since enslaved to [the second noun], you would barely be able to move on your own volition, let alone speak." instead. 

Chapter 4 - Unlinking
	
Understand "unlink [something]" as unlinking.

Unlinking is an action applying to one thing.

Carry out unlinking:
	clear connections to the noun.
	
Report unlinking:
	say "Now [the noun] is linked with nothing."
	
To clear connections to (item - a thing):
	if the item is damning and the item mentions someone:
		now the item does not incriminate anyone;
		now the item incriminates all the people mentioned by the item; 
	if the item is Clemens:
		now Clemens is snoring;
		now Clemens incriminates the player;
	if the item affects something important (called the slave):
		now the item affects blank;
		now the slave affects blank;
		clear connections to the slave;
	if the item protects something (called the slave), now the item protects blank;
	if something important (called the master) affects the item, clear connections to the master.

Book 4 - Checking Validity

Chapter 1 - The Link Check Rules

Before labor: 
	if text produced by the link check rules is "":
		stop the action;
	otherwise:
		if unlinking, continue the action;
		if reverse linking the noun to something which is affected by the noun:
			clear connections to the noun;
			clear connections to the second noun;
			say "(building on the existing connection)[line break]";
			continue the action;
		if the noun affects something or something affects the noun:
			say "(first unlinking [the noun])[line break]";
			clear connections to the noun;
		if the second noun affects something or something affects the second noun:
			say "(first unlinking [the second noun])[line break]";
			clear connections to the second noun.
	
The link check rules are a rulebook producing text.

A link check rule:
	if reverse linking:
		if the noun is a person and the second noun is not a person, make no decision;
		if the second noun is a person and the noun is not a person, make no decision;
	if the noun resembles the second noun or the second noun resembles the noun, rule succeeds with result "The inherent likeness of the two comes to your aid.".
	
A link check rule:
	if the noun is the second noun:
		say "There's no point linking something to itself.";
		rule fails.

A link check rule:
	if the noun is a person or the second noun is a person:
		if the noun is a person and the second noun is a person, rule succeeds with result "You have always been good at people..."; 
		if noun is not a person, say "This would work better if [the noun] were a person.";
		otherwise say "This would work better if [the second noun] were a person.";
		rule fails.
	
A link check rule:
	if the noun is inscribed and the second noun is inscribed:
		rule succeeds with result "The similarity of content makes this one easy...".
	
A link check rule:
	if the noun is a container and the second noun is a container:
		rule succeeds with result "Both are container-shaped, which makes this simple.";
	if the noun is a supporter and the second noun is a supporter:
		rule succeeds with result "Both are supporters, which makes this easy.";
	if the noun is a paper and the second noun is a paper:
		rule succeeds with result "Both are papyrus, which simplifies matters.";
	if the noun is a book and the second noun is a book, rule succeeds with result "The linking of books is so familiar to you as to be second nature.".

The last link check rule: 
	say "[The noun] is insufficiently similar to [the second noun] for the two to be linked.";
	rule fails.
	
Chapter 2 - Finding All Viable Links - Not for release

Understand "compare [something] against [something]" as testing it against.
	
Testing it against is an action applying to two things.

Carry out testing it against:
	if text produced by the link check rules is "":
		do nothing;
	otherwise:
		say "[The noun] links to [the second noun]."
	
Understand "compare [something]" as testing.

Testing is an action applying to one thing.

Carry out testing:
	repeat with item running through things:
		try testing the noun against the item.

Understand "viable" as listing viable links.

Listing viable links is an action applying to nothing.

Carry out listing viable links:
	repeat with item running through things:
		try testing item.


Book 5 - Affecting Actions

Chapter 1 - Opening and Closing  

Instead of opening something which affects something openable (called the slave):
	say "You tug at [the noun]. ";
	if the slave is open:
		say "[The slave] jiggles, but is already open. "; 
	otherwise:
		say "[The slave] pops open. ";
	now the slave is open;
	if the slave affects the noun:
		now the noun is open;
		say "[The noun] opens as well, of course.";
	otherwise:
		say "Nothing happens to [the noun]."

Instead of closing something which affects something openable (called the slave):
	say "You push at [the noun]. ";
	if the slave is closed:
		say "[The slave] jiggles, but is already closed. "; 
	otherwise:
		say "[The slave] slams closed. ";
	now the slave is closed;
	if the slave affects the noun:
		now the noun is closed;
		say "[The noun] is closed as well, of course.";
	otherwise:
		say "Nothing happens to [the noun]."

Chapter 2 - Destruction in General

To destroy (item - a person):
	if the item is the player:
		say "That turns out to have been a humungous mistake.";
		end the story saying "You have died";
	clear connections to the item;
	let context be the holder of the item;
	move corpse to context;
	obliterate the item.

To destroy (item - a thing):  
	clear connections to the item;
	let context be the holder of the item;
	if the item is visible and something underlies the item:
		say "[line break]Left behind [is-are list of things which underlie the item].";
	now every thing which underlies the item is in the context;
	obliterate the item.
	
To destroy (item - a container): 
	clear connections to the item;
	let context be the holder of the item;
	if the item is visible and the item contains a liquid (called substance):
		remove the substance from play;
		say "[line break][The substance] [spilling description of the substance].[paragraph break]";
	if the item is visible and something is in the item:
		say "[line break]Left behind [is-are list of things in the item].";
	if the item is visible and something underlies the item:
		say "[line break]Also, formerly underneath [is-are list of things which underlie the item].";
	now every thing which underlies the item is in the context; 
	now every thing in the item is in the context;
	obliterate the item. 
	
A thing can be whole or ruined. A thing is always whole.

To obliterate (item - a pictorial thing): 
	now the item is ruined;
	now the item does not incriminate the player.

To obliterate (item - a thing):  
	now the item is ruined;
	remove the item from play.
	
Chapter 3 - Burning

A thing can be flammable or impervious. A thing is usually impervious. A thing can be fragile or sturdy. A thing is usually sturdy.

A thing has some text called fiery description. The fiery description of a thing is usually "[if impervious]catches impossible fire and turns into a cloud of thick, formed smoke before dissipating. The link too is gone, of course[otherwise]is consumed in phantom flames, and the link dies with it[end if]". 

Instead of burning something flammable:
	say "You set [the noun] on fire and are quickly rid of it.";
	destroy the noun.
	
Instead of burning the Phaenomena:
	say "You set fire to [the Phaenomena]; it burns very quickly and fiercely, the letters curling and fading. Years of work, and it will be gone in another minute. You tell yourself that you might one day recreate it, but you know you will not have the will to do all that again. The passion for such a project only comes once.";
	destroy the noun.
	
	
Instead of burning the haystack when Clemens underlies the haystack:
	say "You set [the noun] on fire, and it goes up with an impressive amount of smoke.";
	destroy the noun;
	say "[line break]Clemens is not in the best shape, in fact.";
	destroy Clemens.

Instead of burning the player:
	say "Surely there are more rapid and less ridiculous methods of suicide, if that is your chosen course."

Instead of burning something impervious:
	say "[The noun] refuses to catch fire."

Instead of burning something flammable which affects something important (called the slave):
	if the slave is impervious and the slave protects the noun:
		say "[The noun] resists flame, thanks to its link with [the slave]." instead;
	if the slave affects the noun:
		say "[The noun] burns up. ";
		destroy the noun;
	if the slave is visible, say "[The slave] [the fiery description of the slave].";
	destroy the slave.
	
Chapter 4 - Breaking

Understand "attack [something] with [something preferably held]" as attacking it with.

Attacking it with is an action applying to one thing and one carried thing.

Check attacking it with:
	if the second noun is the lamp, try burning the noun instead;
	if the second noun is a paper, say "[The second noun] is a very ineffective bludgeon." instead;
	if the second noun is a book, say "[The second noun] is not yet weighty enough to be any use in that sense." instead; 

Carry out attacking it with:
	try attacking the noun.

Understand "rip [something]" or "rip up [something]" or "rip [something] up" as attacking.

Understand the commands "tear" or "shred" as "rip".

Instead of attacking a paper:
	say "You rip [the noun] to shreds.";
	destroy the noun.	

Instead of attacking something fragile:
	say "You smash [the noun].";
	destroy the noun.
	
A thing has some text called shattering description. The shattering description of a thing is usually "shatters under an invisible blow, and the link dies with it". 

Understand the commands "kill" and "attack" and "murder" and "destroy" as something new. Understand "kill [someone]" as killing. Understand "kill [something]" as killing. Understand the commands "murder" and "destroy" and "attack" as "kill". 

Killing is an action applying to one thing. Instead of killing a thing which is not a person, try attacking the noun. Carry out killing: say ""
	
Instead of attacking the player when Clemens protects the player:
	say "You hit yourself. It does hurt, but you suspect Clemens gets the brunt of it."

Instead of attacking the player:
	if the player affects Clemens:
		say "You punch yourself in the thigh, which is not a very edifying process. If Clemens feels anything, you receive no sign of it.";
	otherwise:
		say "You hit yourself, which does hurt, but accomplishes no useful purpose. Killing yourself, now, that would require a bit more focus."
	
Instead of killing the player:
	if Clemens protects the player:
		say "You make some attempts to slit your wrists, but the blood just flows and flows." instead;
	if the player affects Clemens:
		say "You attack yourself; it is Clemens who dies.";
		destroy Clemens;
	otherwise:
		say "Seeing no honorable and unembarrassing way out of your predicament, you open your veins, and are soon free from earthly cares.";
		end the story saying "You have died".
	
Instead of attacking something sturdy:
	say "[The noun] is not so easily destroyed."

Instead of attacking something fragile which affects something important (called the slave):
	if the slave is sturdy and the slave protects the noun:
		say "[The noun] resists smashing, thanks to its link with [the slave]." instead;
	if the slave affects the noun:
		say "[The noun] shatters.";
		destroy the noun;
		if the slave is visible:
			say line break; 
	if the slave is visible:
		say "[The slave] [shattering description of the slave].";
	destroy the slave;
	if the noun is ruined:
		say line break.

Volume 2 - Incrimination with Various-to-Various Relationships

Book 1 - Concept of Incrimination

Incrimination relates various things to various people.

The verb to incriminate (he incriminates, they incriminate, he incriminated, it is incriminated, it is incriminating) implies the incrimination relation.

Definition: a thing is damning if it incriminates someone.

Book 2 - Written Evidence, and the Crossing Thereof

A thing can be bare or inscribed. A thing is usually bare.

A book is a kind of thing. Before printing the name of a book, say "[italic type]". After printing the name of a book, say "[roman type]". A book is always flammable. The shattering description of a book is "tears into hundreds of shreds, the link disintegrating at the same time". Understand "book" as a book.

A paper is a kind of thing. A paper is always flammable. A paper is always fragile.

Reference relates various things to various people.

The verb to mention  (he mentions, they mention, he mentioned, it is mentioned, it is mentioning) implies the reference relation.

After reverse linking an inscribed thing to an inscribed thing:
	if the noun mentions someone and the second noun is damning:
		now the second noun does not incriminate anyone;
		now the second noun incriminates all the people who are mentioned by the noun; 
	if the second noun mentions someone and the noun is damning:
		now the noun does not incriminate anyone;
		now the noun incriminates all the people who are mentioned by the second noun; 
	if the noun incriminates someone:
		say "[The noun] now incriminates [the list of people incriminated by the noun], ";
	otherwise:
		say "[The noun] innocently mentions [the list of people mentioned by the second noun], ";
	if the second noun incriminates someone:
		say "and [the second noun] incriminates [the list of people incriminated by the second noun].";
	otherwise:
		say "and [the second noun] mentions [the list of people mentioned by the noun].". 

Book 3 - Identification Issues

A person can be introduced or strange. A person has some text called a tag. The tag of a person is usually "no one of note".

After printing the name of a strange person (called the victim):
	now the victim is introduced;
	say " ([the tag of the victim])".
	
After printing the name of a person (called the victim) while listing persons:
	say " ([the tag of the victim])".

Definition: a person is other if it is not the player.

Understand "personae" as listing persons. Understand "who" as listing persons.

Listing persons is an action applying to nothing.

Carry out listing persons:
	say "You've recently had cause to recollect [the list of introduced people]."
	
Instead of examining the player:
	say "You're Agrippa Postumus, son of Julia and Agrippa, grandson of Caesar Augustus; and if his scheming wife Livia hadn't put forth her son Tiberius Nero, you would also be the likeliest heir to your grandfather's place.
	
Instead you're exiled on a bare island not far off Elba, scorned by the Senate and hated by half your relations, with only the consolation of literature."

The tag of the player is "son of Julia and Agrippa, who died before you were born".

Rule for printing the name of the player while examining:
	if the noun is the vase, say "Agrippa Postumus";
	otherwise say "you".
	 

Volume 3 - Concealment, a Various-to-One Relationship

Book 1 - Putting Something Under

Underlying relates various things to one thing.

The verb to underlie (he underlies, they underlie, he underlay, it is underlaid, he is underlying) implies the underlying relation.

Instead of looking under a thing which is underlaid by something (called the lost object):
	say "You reach around under [the noun] and turn up [list of things which underlie the noun].";
	repeat with item running through the things which underlie the noun:
		now the item does not underlie anything;
		now the item is carried by the player.

Hiding it under is an action applying to two things.

Definition: a thing is concealing if it is underlaid by something.

Understand "put [something] under [something]" as hiding it under. Understand "hide [something] under [something]" as hiding it under. Understand "hide [something] in [something]" as hiding it under.

Understand "hide under [something]" as hiding under. Understand "hide in [something]" as hiding under.

Instead of hiding something under Clemens:
	say "Bad idea. There's always the risk that he'll roll over or get up or something."

Check hiding it under:
	if the second noun is not fixed in place:
		say "[The second noun] wouldn't be a very effective place of concealment." instead;
	if the noun is not carried by the player and the noun is not the player:
		say "(first taking [the noun])[line break]";
		silently try taking the noun;
		if the noun is not carried by the player:
			stop the action.

Carry out hiding it under:
	remove the noun from play;
	now the noun underlies the second noun;

Report hiding it under:
	say "You shove [the noun] out of sight beneath [the second noun]." 

Hiding under is an action applying to one thing. 

Carry out hiding under:
	try hiding the player under the noun. 
	
Instead of hiding the player under something:
	say "You are too large by far."

Instead of hiding the player under the haystack:
	say "Without some decoy, they'll certainly look hard enough to find you."

Instead of hiding the player under the haystack when Clemens protects the player:
	say "Either they'll be convinced by Clemens or they won't; if they aren't, the haystack will not protect you, and it will only detract from your dignity to be found under there."

Volume 4 - Physical Environment

Book 1 - The Study

Chapter 1 - Basic Room
	
The Water Study is a room. "The walls are painted black with simple architectural motifs, except for the cunning panel of three green pears[if the pitcher is whole] and a pitcher of water. The glass is painted so that light seems to fall through it from [the window], and the pears are[end if] luscious enough to eat[if the pitcher is ruined]. The shards of glass and the pool of water are a little hard to explain, but might be written off as the artist's odd fancy[end if]." The printed name of the Water Study is "Study with Pears and [if the pitcher is whole]Pitcher[otherwise]Spilled Water[end if]".

Instead of going nowhere: say "You can go in and out the window, but otherwise gallivanting around the villa is a bad idea. The other rooms are full of soldiers."

Chapter 2 - Window and Escape

The window is outside from the Water Study and inside from the Outdoors. It is a door. It is open and scenery. The description of the window is "A square window giving onto flat ground."  It is not openable.

Understand "climb through/out/in/into [window]" as entering.

After going to the Outdoors from the Water Study:
	say "Any other direction would be unsafe at the moment, so you climb gingerly out the window...";
	continue the action.
	
After going to the Water Study from the Outdoors:
	say "You clamber back over the windowsill.";
	continue the action.

Before inserting something into the window: try throwing the noun out the window instead.

Before going outside with something (called the burden): try throwing the burden out the window instead.

Understand "throw [something] out/through [window]" as throwing it out. Understand "push [something] out/through [window]" as throwing it out.

Throwing it out is an action applying to two things.

Check throwing it out:
	if the noun is not pushable between rooms and the noun is not carried by the player:
		say "(first taking [the noun])[line break]";
		silently try taking the noun;
		if the noun is not carried by the player:
			stop the action;
	if the noun is fragile and the noun is not protected by something sturdy:
		say "[The noun] won't survive the trip." instead.

Carry out throwing it out:
	move the noun to the Outdoors.
	
Report throwing it out:
	say "You casually toss [the noun] out of the window; perhaps you'll be able to collect it later."

Instead of searching the window: 
	say "There's little to see: the island is extremely flat and offers little other civilization, and no escape besides the ships that carry your enemies. Running away will do no good."

Chapter 3 - The Wall-Painting

A thing can be real or pictorial. A thing is usually real.

The panel is scenery in the Water Study. Understand "pears" or "pear" or "three pears" or "green pears" or "picture" or "study" or "painting" as the panel. The description is "An innocent image[if the pitcher incriminates the player], except for the incriminating pitcher[end if]."

Before linking something to the panel, try linking the noun to the pitcher instead. Before linking the panel to something, try linking the pitcher to the second noun instead.
	
Before reverse linking something to the panel, try reverse linking the noun to the pitcher instead. Before reverse linking the panel to something, try reverse linking the pitcher to the second noun instead.
	
Before enslaving something to the panel, try enslaving the noun to the pitcher instead. Before enslaving the panel to something, try enslaving the pitcher to the second noun instead.
	
Before unlinking the panel, try unlinking the pitcher instead. 

Include Case Management by Emily Short. [* This is a small extension that allows us to force printing in all caps or all lower-case; we will use it to make people's names occur properly in the pitcher description.]

The painted glass pitcher of water is part of the panel. It is pictorial. It is inscribed. The pitcher mentions the player. The pitcher incriminates the player. The description is "It is lovely, except for the symbol -- so perfectly, so clearly rendered on the glass of the pitcher -- of Venus Genetrix, ancestor of your family and source of your Art. 

And lest there be any doubt, you had to add the letters [italic type][if the pitcher incriminates the player]AGRIPPA POSTUMUS[otherwise][a random person incriminated by the pitcher in caps][end if][if the pitcher incriminates the player and the pitcher incriminates Julia] ET JULIA ME FECERUNT[otherwise] ME FECIT[end if][roman type], scratched as though into the neck of the pitcher, but perfectly legible. 

The whole thing is a demonstration-piece proving the skills of the Artisan. In this case, [the list of people who are incriminated by the pitcher].". Understand "water" or "pool" or "pool of water" or "venus" or "symbol" or "venus genetrix" or "shards of glass" or "shards" as the pitcher.

Instead of examining the ruined pitcher:
	say "Poor thing, it's nothing but painted shards now."

The shattering description of the pitcher is "cracks silently, the painted water spilling in perfect resemblance of real water, the dangerous symbol of Venus Genetrix now illegible painted slivers; and then the link that controlled it is gone".

Chapter 4 - Your Slave Clemens

Section 1 - Alive

Clemens is a man in the Water Study. "[Clemens] is [if snoring]snoring in the corner, [end if]oblivious to what is about to happen. He is [if the player affects clemens]almost indistinguishable from[otherwise]very similar to[end if] yourself: strongly built, with aquiline features, keenly intelligent, but losing himself in physical outbursts when enraged[if the player protects Clemens]. He will also now have -- though he may not know how to use -- your Arts and abilities. As a double he could not be more convincing[end if]." The description of Clemens is "Your mother bought him when you were a teenager. He is not a very good slave in most respects, but she thought his resemblance to you might someday become useful[if the player protects clemens]. That day may well have arrived[otherwise].

Unfortunately, he's familiar with your secret[end if][if the vase affects Clemens and Clemens is silent]. The good news is that he's unlikely to be able to tell it in this state, subject to the vase[end if]." Understand "slave" or "man" or "look-alike" or "useless slave" as Clemens. Clemens can be snoring or silent. Clemens is snoring. The shattering description of Clemens is "sort of breaks, like a man on the rack -- it's a horrible sound, and a horrible sight as well". 

Before taking Clemens when the number of things carried by the player > 0:
	if Clemens is carried by the player:
		continue the action;
	say "You can't move Clemens while carrying much of anything else." instead.
	
Before taking something when the player is carrying Clemens:
	if the noun is Clemens:
		continue the action;
	say "Your hands are completely full with Clemens." instead.

Instead of taking Clemens when Clemens is not carried by the player:
	move Clemens to the player;
	say "You manage, though with considerable difficulty, to lift Clemens." instead.

The tag of Clemens is "your useless slave". Clemens incriminates the player. Instead of listening to a snoring Clemens: say "[Clemens] snores throatily." Instead of listening to a silent Clemens, say "[Clemens] has been silenced quite effectively."

Instead of attacking Clemens when Clemens affects the player:
	if the player protects Clemens:
		say "You punch Clemens in the arm, but it's a little like punching a pillow; the reverse-link protects him from any real harm.";
	otherwise:
		say "You punch Clemens, and immediately get a searing pain in your own jaw. Amazingly he doesn't seem to be bothered by it, or at least not enough to wake up. A good Falernian can truly work wonders."
	
Instead of killing Clemens when Clemens affects the player:
	if the player protects Clemens:
		say "You start to throttle the poor man, feeling the same choking grasp around your own throat -- but of course the protection of the reverse link keeps him breathing, though uncomfortably and unnaturally.
		
Murdering someone linked to you is rarely a successful enterprise, you note. For future reference.";
	otherwise:
		say "You put your hand to his neck and immediately feel that same deadly grip around your own windpipe.
	
He gags in his sleep, and your hold slackens at once. No good throttling someone who's linked to you!"

Instead of attacking Clemens:
	say "Repeated blows about the head and neck fail to rouse Clemens from his stupefaction. You begin to wonder whether he's really as sleepy and hung over as all that, or whether he is merely shamming. He'll do almost anything to avoid involvement in an unpleasant situation, Clemens."
	
Instead of killing Clemens:
	say "You have the advantage of surprise: though [Clemens] wakes up halfway through being throttled, he doesn't fight back very effectively, and soon you have subdued him.
	
Now he won't be able to speak to anyone about you[if the player affects Clemens], though your link with him is pretty much at an end as well[end if].";
	destroy Clemens.

After throwing Clemens out the window:
	say "You pitch Clemens through the window, expecting this (at least) to wake him. 

There's a dramatic OOF, but he keeps snoring away."

After dropping Clemens:
	say "You lower the still-sleeping Clemens to the floor."
	
Before hiding Clemens under something which is not the haystack:
	say "[Clemens] will certainly not fit under [the second noun]." instead.
	
After hiding Clemens under the haystack:
	say "You bury Clemens under a great deal of hay, which is just enough to stifle his snoring."
	
Instead of burning Clemens:
	say "You hold the flame to his skin, where it singes off some hair, but he just grumbles and pulls away[if Clemens affects the player]. This stings you in a mild way, too[end if]."

Instead of listening to the Water Study in the presence of Clemens:
	try listening to Clemens.
	
Instead of asking Clemens to try doing something:
	say "He rarely follows your commands even when awake."
	
Asking Clemens about something is communication. Telling Clemens about something is communication. Answering Clemens that something is communication. Asking Clemens for something is communication.
	
Instead of communication:
	if Clemens is snoring, say "The only response you get is a jerky snore.";
	otherwise say "He remains utterly silent."
	
Understand "talk to [someone]" or "chat with [someone]" as chatting with. Understand the command "converse" as "chat". Chatting with is an action applying to one thing. Instead of chatting with a silent Clemens: say "In his current state, he would be unable to hold a conversation even if conscious." Instead of chatting with a snoring Clemens: say "You offer a few reflections on the weather in Planasia at this time of year. He snores loudly in response."
	
Section 2 - Dead
	
The corpse is a man. "[Clemens], your look-alike slave, lies dead here." It is pushable between rooms. The description is "Formerly [Clemens], now thoroughly unthreatening." Understand "slave" or "body" or "clemens" or "dead" or "man" or "look-alike" or "useless slave" as the corpse.

Instead of touching or kissing the corpse:
	say "The concept doesn't much appeal to you."

Instead of hiding the corpse under something:
	say "Grotesquely implausible idea."
	
Asking the corpse about something is necromancy. Telling the corpse about something is necromancy. Answering the corpse that something is necromancy. Asking the corpse for something is necromancy.  Instead of necromancy: say "You've never placed much stock in the necromantic arts."  

Instead of asking the corpse to try doing something: say "He belongs to the underworld now."

Instead of chatting with the corpse: say "You doubt you'd get very stimulating answers from a corpse."

Instead of waking the corpse: say "Asclepius may have been able to wake corpses, but you, alas, are not."

Instead of giving something to the corpse:
	say "The corpse of Clemens offers no comment."
	
Instead of showing something to the corpse:
	say "It is unclear that the spirit of Clemens can perceive things adjacent to his body. In any case, he does not answer."
	
Instead of attacking the corpse:
	say "Clemens is already dead."

Chapter 5 - The Vase

The vase is a container in the Water Study. "A substantial vase, an antique, stands near the window." It is impervious, inscribed, fragile, open, and not openable. It mentions Clemens. Understand "krater" or "fates" or "achilles" as the vase. The vase is fixed in place. The vase resembles the pitcher.  Clemens resembles the vase.

Instead of turning the vase when the vase protects the whole pitcher:
	say "You try rotating the krater to expose a different side of the pitcher to view in the wall-painting, but -- since the pitcher is perfectly glassy -- the Venus Genetrix is still quite visible in reverse, and the letters legible, boustrophedontic."

The low stool is an enterable supporter in the Water Study. "There's also a low stool[if something underlies the stool], the sort that things roll under and get lost[end if]." The description of the low stool is "Very squat. It is uncomfortable for sitting on, and annoying for not being able to find things under. You were considering perhaps throwing it away, only there is not much new furniture being delivered to Planasia, or, for that matter, made to order."

Before hiding something under the stool when something underlies the stool:
	say "The stool can only effectively conceal one thing at a time." instead.

Instead of pushing or pulling or turning something concealing:
	try looking under the noun.

Instead of kissing Clemens:
	say "Suppressing your distaste, you drop a kiss on the sleeping Clemens. He sleepily murmurs the name of one of the slave girls who works in the kitchen. Fascinating."

Instead of waking Clemens for the first time:
	say "You gently shake Clemens by the shoulder. This has absolutely no effect."
	
Instead of waking Clemens for the second time:
	say "You shake Clemens again, a little bit less gently this time around.
	
Still no luck."

Instead of waking Clemens for the third time:
	say "You lean close to his ear and yell his name. He snorts! But then the heavy, wine-scented respiration begins again."

Instead of waking Clemens for the fourth time:
	say "You slap Clemens about the cheeks. He goes on snoring profoundly."

Instead of waking Clemens for the fifth time:
	say "You slug Clemens in the gut. He mutters some Greek oaths, but does not so much as open one eye."

Instead of waking Clemens:
	say "It is by now evident that nothing, not even Aetna opening beneath him, would rouse Clemens from slumber a moment sooner than he wants to be roused."

Instead of examining the vase:
	let the grafitee be Clemens;
	if something (called the master) affects the vase:
		if the master mentions someone:
			if the master mentions Julia and the master mentions the player:
				say "A Greek krater with Achilles on one side and the Fates on the other. 

One night in a drunken fling Clemens scratched some writing about your mother into the black field behind Clotho. 

And to make matters worse, someone has written your name so it seems to be emerging out of the mouth of Achilles, on the other side, as though he's calling out to you." instead;
			let the grafitee be a random person mentioned by the master;
	otherwise:
		if the vase mentions someone (called the nominee):
			let the grafitee be the nominee;
			let the character be the nominee;
	say "A Greek krater with Achilles on one side and the Fates on the other. 

One night in a drunken fling Clemens scratched some writing into the black field behind [if the grafitee is a woman]Clotho[otherwise]Achilles[end if]. So now it says [italic type][the grafitee] est kal[if the grafitee is a woman]e[otherwise]os[end if][roman type] in a pig mixture of Greek letters and Roman. Roughly, [italic type][the grafitee] is hott[roman type][if the grafitee is Julia]. Kind of a kinky thing to have lying about the house referring to your own mother[end if]."

Chapter 6 - The Phaenomena of Aratus

The Phaenomena is an inscribed book in the Study. "[if the Phaenomena incriminates the player]In plain view [otherwise]Ready for discovery and perhaps publication [end if]is your pride and joy, your [Phaenomena][if the Phaenomena does not incriminate the player] -- all the hard work falsely attributed to [a random person incriminated by the Phaenomena][end if]." It incriminates the player. It mentions the player. The description of the Phaenomena is "A fair, complete Latin version of the [Phaenomena] of Aratus: a treatise on constellations, weather, and other behavior of the sky. It represents years of laborious work, reverse-linking commentaries and previous editions and copying out the results.

The prologue explains how [a random person incriminated by the Phaenomena] accomplished the translation." Understand "prologue" as the Phaenomena.

After examining the Phaenomena when the Phaenomena incriminates the player and the Phaenomena incriminates Julia:
	say "It makes it out to be a joint project -- and an interesting joint project that would certainly have been -- but it will only get you both in trouble, and your mother needlessly. 

She has her own means of self-protection, so this might not be fatal for her. But it is a risky maneuver."

After examining the Phaenomena when the Phaenomena incriminates Clemens:
	say "This will no doubt astonish everyone, Clemens included -- but he does look so much like you that people might believe him a secret twin of yours, or a bastard brother. Not impossible that he should share the Art, and die for it in your place."
	
After examining the Phaenomena when the Phaenomena incriminates Germanicus:
	say "No one will mind Germanicus being responsible for this; he is scholarly and might plausibly have carried it off without magic. No, there's no danger in switching that attribution.
	
It's just your fame and glory that will take a beating. Another thing in which Germanicus will have bested you -- but perhaps it is better to leave it this way."	

Chapter 7 - Some Correspondence

The recent letter is an inscribed paper. Understand "new" as the recent letter. It underlies the stool. The recent letter mentions Germanicus. The description is "A letter from [if something (called the master) protects the recent letter][a random other person mentioned by the master][otherwise][a random other person mentioned by the recent letter][end if]."  

Instead of examining the recent letter when something which protects the recent letter mentions Clemens:
	if something which protects the recent letter mentions Julia:
		continue the action;
	say "The letter, now purporting to be from Clemens, is all about what he had for dinner and his thoughts on the appearance and sexual prowess of the other slaves."

Instead of examining the recent letter when something which protects the recent letter mentions the player:
	if something which protects the recent letter mentions Julia:
		continue the action;
	say "The letter, now purporting to be from you, has become a dreary piece of work, since there is no news of interest to report on this dreadful island, and hardly any weather. It goes on and on about nothing -- is this really how your letters read to their recipients?
	
Oh well, no time for such reflections now."

After examining the recent letter when the recent letter is unlinked:
	say "Unlike his father, Germanicus is a personable fellow, popular enough, and not particularly afraid of you. His letter is full of such news as he thinks will entertain you in your exile, with little politics, but a healthy dose of bawdy humor."
	
After examining the recent letter when something which protects the recent letter mentions Julia:
	say "What had been a perfectly natural and sprightly letter from Germanicus becomes -- in your mother's able handwriting -- something a little perverse. Surely a woman would not dwell so fulsomely on the sexual scandals of the capital in a letter to her son?
	
And all the off-hand remarks and digressions, which from Germanicus were signs of a lively but disorganized mind, become, from Julia, cryptic utterances full of sinister significance.

But there is nothing absolutely definitely treasonous in it."

The old letter is an inscribed paper carried by the player. The old letter mentions yourself. The old letter mentions Julia. The old letter incriminates yourself. The old letter incriminates Julia. The description is "A letter from [a random other person incriminated by the old letter]. It is now some years old, and contains an assortment of advice in the family Art: how to link one thing to another so that one affects the other; how to reverse link written works to produce intriguing variations on their content; how to enslave one thing to another so that the slave endures the miseries intended for the master; etc., etc., etc. 

All this you have long since learned, with particular attention to the way that links can be applied to written things, and to the correspondence between names and named." 

Instead of examining the old letter when the old letter incriminates the player and the number of people incriminated by the old letter is 1:
	say "Rewritten as though by you, the letter becomes not an introduction but an instruction for experts. Simple linking is mentioned only glancingly, slave-linking practically ignored; you've rarely had any use for so brutal and unreasonable an arrangement. 

Almost all the attention is lavished upon reverse linking in a scholarly context: instructions for making use of scholia, for producing translations, for linking different manuscripts in order to remove the errors in each and get back the lost original text. 
	
Indeed, you wish you [italic type]had[roman type] written it, perhaps to [Julia] or someone else whom you could trust. But it will only damn you further if it's found."

Instead of examining the old letter when the old letter incriminates Germanicus:
	say "This letter, which is so old and so important that you have practically committed it to memory, is now rewritten in the voice of Germanicus. He has not your mother's authority and focus; his advice tends to meander, and he hedges his suggestions by saying that he has not tried this, does not know about that, distrusts the popular opinion on the other...
	
Nonetheless it is quite plainly a letter in which Germanicus coaches the recipient -- and since you have it, that recipient must be you -- in the family Art. Disastrous for you, if found; perhaps not entirely good for Germanicus either."

After printing the name of a paper (called the document) while taking inventory:
	if the document incriminates someone (called the victim):
		if the number of people incriminated by the document is 1:
			say " from [a random person incriminated by the document]";
		otherwise:
			say " from [a random other person incriminated by the document]";
	otherwise:
		if something (called the intertext) which mentions someone (called the victim) protects the document:
			if number of people mentioned by the intertext is 1:
				say " from [a random person mentioned by the intertext]";
			otherwise:
				say " from [a random other person mentioned by the intertext]";
		otherwise:
			say " from [a random other person mentioned by the document]"

Germanicus is a man. The tag of Germanicus is "the adopted son of Tiberius". Julia is a woman. The tag of Julia is "your mother, daughter of Augustus". Scribonia is a woman. The tag of Scribonia is "the mother of [Julia]".

Tiberius is a man. The tag of Tiberius is "your rival for power".


Chapter 8 - The Lamp

A liquid is a kind of thing. Before labor when the noun is a liquid or the second noun is a liquid: say "You have no such powers over liquids." instead. A liquid has some text called the spilling description. The spilling description of a liquid is usually "spills out on the ground, and soon soaks in".

The lamp is a lit container carried by the player. The description is "A [if lit]lit[otherwise]now-empty[end if] oil lamp." It is fragile. The lamp contains a quantity of oil. The oil is a liquid. Instead of doing something to the oil, say "The oil is busily burning." The lamp resembles the pitcher. The spilling description of the oil is "spills on the ground, where it spreads fast -- you briefly worry that you're about to set something on fire -- but the flames soon flicker out and the oil itself soaks in".

Instead of inserting something into the lamp:
	say "The lamp is oily, and needs no other contents."
	
Understand "empty [something]" as emptying. Emptying is an action applying to one thing. Check emptying: if the noun is a person, say "A disturbing notion worthy of a Gaul." instead; if the noun is not a container, say "[The noun] [are] incapable of containment in any case." instead; if the noun does not contain something, say "[The noun] [are] already empty." instead. Carry out emptying: now every thing in the noun is in the location. Report emptying: say "You dump out [the noun], leaving [them] empty."

Instead of emptying the lamp when the oil is in the lamp:
	remove the oil from play;
	say "[The oil] [spilling description of the oil].";
	now the lamp is unlit.

Before burning something when the player is not carrying the lit lamp:
	say "It would help if you had a fire source." instead.

Instead of thinking:
	say "You take a quick glance around the room, noticing everything that might incriminate: [the list of visible things which incriminate someone][if the number of visible things which incriminate someone is 1] is the only thing left[end if]."; 
	
Book 2 - The Outdoors

The description of the Outdoors is "A somewhat unpleasant scrap of uncultivated land whose chief virtue is being awkwardly placed. It's not an area that can be seen from the front of the villa, and it might not suggest itself to the searchers. On the other hand, if they don't find you in the Study..."

The haystack is a fixed in place thing in the outdoors. "A heap of grubby hay is piled against one wall." Understand "heap" or "hay" or "grubby" or "heap of grubby hay" as the haystack. The haystack is flammable.

Before hiding a paper under the haystack: say "[The noun] would be ruined by the dirt and wet -- you might as well just tear it up, at that point." instead.

Before hiding a book under the haystack: say "[The noun] would be ruined by the dirt and wet -- you might as well just tear it up, at that point." instead.

Instead of hiding the lamp under the haystack: say "That would be tantamount to igniting the haystack."

Volume 5 - Plot and Time

Book 1 - Beginnings

When play begins:
	now the right hand status line is "[time of day]";
	say "[bold type]Planasia, in the Tyrrhenian Sea[roman type]
	
Augustus is dead.
	
He saw this coming; in that last, secret visit he gave you certain warnings about using the powers of your House, and the jealousy of Tiberius.

'For I assume,' Augustus said, looking like a hollower version of his own statue, 'that Julia's son does practice the Art?' 

You looked back blandly, as your mother taught you. But he was not fooled.

'I will not live much longer,' he said. 'When the day comes, you must hide your strength from Tiberius, or show it overwhelmingly.' He began to walk away along the shore.

'Perhaps I have none,' you suggested.

He turned back. 'I have read a few of the books in your study, Agrippa,' he said, his eyes amused. 'The Latin Cypria is very fine; I wish I knew what reverse links you made to produce it.'

That was the last you spoke with him.[paragraph break]"; 
	
	
Book 2 - The Schedule

The time of day is 4:48 PM.

At 4:49 PM:
	say "Your heart pounds. No time, no time, no time..."

At 4:52 PM:
	say "Some preliminary banging and knocking[if the player is in Outdoors] round the front[otherwise] outside[end if]. The slaves will delay as long as possible, but you can't have much time left."
	
At 4:53 PM:
	if a visible snoring Clemens incriminates the player,
		say "[Clemens] groans and mutters in his sleep. 

If they even look like they might be going to torture him, he will of course tell them everything about you.".

At 4:54 PM:
	say "The delegation[if the player is in Outdoors] has gotten[otherwise] has come[end if] inside. Your servants, bless them, make as much noise as possible -- to warn you, in case you didn't already know."

At 4:55 PM:
	say "Banging from the courtyard. You will soon have company."

At 4:56 PM:
	say "The guards swear[if the player is in Outdoors] somewhere inside[otherwise] in the next room[end if], searching through your possessions in the most distressing way."
	
At 4:57 PM:
	say "An amphora is broken[if the player is in Outdoors] somewhere inside[otherwise] in the next room[end if]."
	
At 4:58 PM:
	say "The soldiers break through into [the Study], putting your quick work to an end. ";
	move soldiers to the Study;
	follow the endgame rules.
	
Book 3 - Finale

The endgame rules are a rulebook.

Started printing is a number that varies. Started printing is 0.

A person can be apparently guilty or apparently innocent. The player is apparently innocent.

An endgame rule:
	if the soldiers can see the corpse:
		say "[start]They swear graphically at the sight of [the corpse]. 'What's this?' one of them asks another. 'Someone didn't get here before us...?'
	
'...No. That'll be a slave.'

More swearing.

'Calm yourself, Manlius -- it's nothing to us if he's been offing his slaves. For all we know the man did something to deserve it. Mind on the work, now.' Tiberius did always accumulate the most pleasant toadies."; 

An endgame rule: 
	if the player is in the Outdoors and the player does not protect Clemens:
		say "[start]'Right then,' says one of them, poking his head out the window. 'I thought I might find you here.' And he drags you back inside and sets you firmly on the floor.[paragraph break]";
		move the player to the Study, without printing a room description;
		if a visible thing incriminates the player:
			say "Involuntarily you find yourself glancing toward [the list of visible things which incriminate the player].[paragraph break]";
		say "'And Tiberius is worried about being outwitted by this one?' says the skinniest. There's a general chuckling which makes you want to kick someone, but you refrain.";
		if the player is carrying Clemens:
			move Clemens to location;
			say "In all the fun, you also drop Clemens unceremoniously.";
		if something underlies the haystack:
			say "[line break]'Wait a moment,' says one of the brighter-looking ones. 'What was he doing outside?'
			
'Right!' says the one who hauled you in. He hops through the window and can be heard rummaging for a moment. He returns and puts [the list of things underlying the haystack] down.[paragraph break]"; 
			now every thing which underlies the haystack is in the Study;
			now every thing which underlies the haystack is recovered;
			now every thing which underlies the haystack does not underlie anything.
	
A thing can be recovered or ordinary. A thing is usually ordinary.


An endgame rule:
	if the player protects Clemens, make no decision;
	if Clemens is silent:
		say "[start]The soldiers poke at Clemens, trying to wake him and question him, but no matter what they do, he remains completely still, frighteningly inert.[paragraph break]";
		make no decision;
	if the soldiers can see Clemens and Clemens incriminates the player:
		now the player is apparently guilty;
		say "[start][if Clemens is recovered]They look back and forth between you and Clemens, confused now. You begin to have hopes, but then he wakes up. [otherwise]Clemens sits bolt upright. 'Could you lot keep quiet?' he demands in a peevish accent. 'I'm a delicate sleeper, practically an insomniac... you have no idea how difficult it is for me to catch the least rest... and here you are running over the place as though you own it, and disturbing innocent sleep!'
		
There is a moment's astonished silence from the soldiers.

'Is that--'

'But he's an imbecile!'

'--no wonder Tiberius wants him killed!' [end if]

Clemens begins to cough in a supremely annoying way. 'Gentlemen, forgive me, but I am terribly ill, and only a slave in this house, and you have no idea the strange things my master gets up to, no idea... they're quite unnatural.'

Damn him to a little black crisp. But he goes on, simpering and murmuring out his story, much embellished, about all your strange magical activities, some of which are astonishingly perverse, and not in the line of scholarship at all.[paragraph break]".


An endgame rule:
	if the player is apparently guilty, make no decision;
	if the soldiers can see the old letter and the old letter incriminates Julia and the old letter incriminates the player:
		now the player is apparently guilty;
		now Julia is apparently guilty;
		say "[start]Someone finds [the old letter].
		
'This is something,' says one of them in a slow voice. 'The runt is definitely at fault, and so, it appears, is his mother.'

'Tiberius will be interested in [italic type]that[roman type],' says the second voice.[paragraph break]"; 

An endgame rule:
	if the soldiers can see the pitcher and the pitcher incriminates the player:
		if the player is apparently guilty, make no decision; 
		now the player is apparently guilty;
		say "[start]They mill around, talking to each other and themselves, swearing and generally making a mess of things, until one of them says, 'By Jupiter! Look at this.' They gather around the painted pitcher, and one of them even puts out a hand to touch it.
		
'Signed his name right on it,' says one of them wonderingly. Yes, quite. Because you had not thought it would matter, in the end..."; 

An endgame rule:
	if the soldiers can see something (called the evidence) which incriminates the player and started printing is 0:
		now the player is apparently guilty; 
		say "[start]The soldiers mill around until one of them lights on [the evidence] and points it out to the others. They're no fools, these -- at least one of them must be quite high ranking, though from their dress you wouldn't be able to tell. But they do know what they're looking for.".

An endgame rule:
	if the soldiers can see the player, make no decision;
	if the soldiers can see Clemens and the player protects Clemens:
		if started printing is 0:
			say "[start]'Found him,' announces one of the military voices, grimly satisfied.
		
'Poor bastard.'[paragraph break]"; 
		if Clemens is silent:
			say "[start]'He looks dead,' says one of them. 'I can't wake him. He doesn't seem to be breathing.'
			
'Maybe he killed himself,' agrees one of the others. 'But it is a strange death -- we had better take the body with us.'";
		if the player is apparently innocent:
			say "[start]Clemens grunts, as though someone has woken him a little roughly. 'You,' says one of the guard. 'We've been over the house, not found what Tiberius sent us to look for.'
			
Clemens moans stupidly. It strikes you that his near-comatose sleep earlier probably had to do with overindulgence with wine, flute girls, or both.

'Dumber than an ox,' remarks one of the soldiers to another. 'Leave him. He's no danger here.'

And they go out. Out! You did it. And now the choice is yours: to go back inside and resume your life of exile, or to find an escape from this island, while Clemens plays the part of you. Who knows? You might even make it back to Rome...

But you aren't dead. Augustus and his warnings bought you that much, at least.";
		otherwise:
			say "Clemens gives an indignant shout as though someone has prodded him with a sharp thing. 'You,' says one of the guard. 'Wake up: Tiberius sent us to work on you.'

Never too quick on first waking, Clemens. He doesn't say anything at first, and then he starts muttering incoherently about how he doesn't know what Tiberius wants. Obviously it hasn't even occurred to him that his identity has been mistaken.

But they hustle him off, and you, you survive. So must he, but it's probably not a happy life: they'll have found they can't easily kill him, but his prison must be uncomfortable.

It isn't yours, though. That's the main thing. You live, free; take his name, and travel as a member of the servant class, for now. There will be time enough to change that later. One of these days you may even make it back as far as Rome.".
	
	
An endgame rule:
	if the player is apparently guilty, make no decision;
	if Clemens is silent:
		make no decision;
	if Clemens is in the Outdoors and the soldiers can see the player and Clemens incriminates the player:
		say "[start]For a moment you have hopes that everything will be well. Then from the window comes a familiar sound: a long deep snore like the sawing of wood.
		
One of the soldiers puts his head outside and hauls Clemens firmly in through the opening. 'Look, I thought it was a bear, but it is only a drunk.'[paragraph break]";
		move Clemens to the location;
		say "They then set about waking him, which they eventually achieve by the expedient of opening his eyelids manually.
		
'SLAVE,' says a burly soldier. 'Have you seen your master here doing any unusual Arts or magics?'

Clemens glances over at you, and you see the rapid calculation going on in his head. Defend, betray? Will there be tortures, or will there be bribes? But you lose the battle in his mind quite quickly. He nods, searching for something sufficiently interesting to offer. 'Very unusual,' he says. 'With-- young boys. And sheep.'

The soldiers glance at one another. 'Runs in the family,' one of them remarks dryly. 

'But making one thing behave like another? Unnaturally?' prompts the leader.

Clemens grimaces, then nods again. 'Things open and shut by themselves,' he says. 'And he knows how to unlock a box from the other room.' Yes, that will be enough; that will end you.

He avoids your eye.[paragraph break]".
	
Rule for deciding the concealed possessions of the player: 
	if the particular possession incriminates the player, yes.

An endgame rule:
	if the soldiers can see the player and the player is apparently innocent:
		if the player is carrying something which incriminates the player:
			now the player is apparently guilty; 
			say "[start]The biggest and most black-bearded of the lot now gets around to searching your personal possessions -- it would be too much to hope that they wouldn't. He has very white teeth, which makes you think of the old verses about the Spanish and their interesting cosmetic use of urine...
		
But this distraction only keeps your face placid for a moment. The bruiser digs up [the list of damning things carried by the player], and tuts pointedly.";
			now every damning thing carried by the player is carried by the soldiers;
		otherwise:
			if the Clemens does not incriminate the player and the soldiers can see Clemens and Clemens is not silent:
				say "[start]The soldiers prod Clemens awake and ask him a few questions; he opens his mouth to speak, but you exert the full force of your will through the reverse link, and all that comes out is an inebriated hiccup. (Difficult work, that -- it wouldn't work at a greater distance, and you can't make him say anything. But still, a useful trick.) In any case, he is judged too drunk to offer any useful evidence.[paragraph break]".

An endgame rule:
	if the Phaenomena incriminates Germanicus:
		now the Phaenomena mentions Germanicus;
		now the Phaenomena does not incriminate Germanicus;
	repeat with evidence running through damning things which can be seen by the soldiers:
		now every person incriminated by the evidence is apparently guilty.

An endgame rule:
	if the soldiers can see the player and the player is apparently guilty:
		if the player affects Clemens:
			if Clemens protects the player:
				say "[start]The soldiers then try to assassinate you, as they no doubt have been instructed to do. But your reverse-link to Clemens holds strong, so while you experience quite a lot of discomfort, you manage not to be killed.
		
There ensues a perverse comedy, with them attempting bludgeonings and hackings and even forcing you to take poison, which you would find amusing if it weren't so hugely unpleasant. For an hour you run blood for them from opened veins, until they get tired of the display and bandage you up again.

The end of it all is that they carry you off by force to be imprisoned somewhere much deeper and more unpleasant; so while you do not die, you can't count it an entire success, either.";
				end the story saying "You have been imprisoned";
				rule succeeds;
			otherwise:
				if Clemens affects the player:
					if Clemens is visible:
						say "[start]It seems the soldiers have been given permission to kill you immediately, and this they proceed to do. You only very briefly have time to reflect that Clemens shares your demise.";
					otherwise:
						say "[start]It seems the soldiers have been given permission to kill you immediately, and this they proceed to do. Somewhere, out of sight, Clemens will be dying also.";
				otherwise:
					if Clemens is visible:
						say "[start]It seems the soldiers have been given permission to kill you immediately. This process involves a spear through the heart, which is intensely painful, and which you feel with much more clarity than you would have imagined possible.
						
At once a wound opens in the slave's chest. He screams, the soldiers scream, there is blood and yelling about eastern magic; the spear is still inside you, your heart beating laboriously in spite of it. One of them cuts the head off Clemens, but that's not enough -- your slave-link had a strong grip on him, and his body still stands there.

Eventually you, and the Clemens-corpse, are packed up in wagons under guard and taken to a deeper prison where, if they cannot figure out how to kill you, they can make your life deeply unhappy. And this all could have ended so much better.";
						obliterate Clemens;
						end the story saying "You have been imprisoned";
						rule succeeds;
					otherwise:
						say "[start]It seems the soldiers have been given permission to kill you immediately. This process involves a spear through the heart, which is intensely painful, and which you feel with much more clarity than you would have imagined possible.
						
But you do not die of it.
						
Instead you lie very still.
						
Later, they go out, even expressing a little distress at having had to kill you. Then you get up, and remove the spear, and wander around to where the Clemens corpse is, bleeding from the torso."; 
						end the story saying "You have faked your own death";
						rule succeeds; 
		otherwise:
			say "[start]It seems the soldiers have been given permission to kill you immediately, and this they proceed to do...";
			end the story saying "You have died".
	
An endgame rule:
	if the soldiers can see the player and the player is apparently innocent:
		if started printing is 0:
			say "[start]They search impatiently, sometimes glancing at you as though puzzled by your demeanor. You smile at them blandly.[paragraph break]";
		if the player protects Clemens and Clemens protects the player:
			say "They then have a hasty conference about which of you is the slave and which the relative of Tiberius they were sent to deal with (obviously considering it unhelpful to ask you directly). Eventually it is your dress that gives you away: you've always been generous with Clemens, and his clothing is of good material, but he eats so much like a pig that he looks the part of slave despite your best efforts.

There is a further conversation about what this resemblance means, but eventually they draw some ribald conclusions about your mother, and withdraw.";
		otherwise:
			say "The soldiers confer among themselves in low voices for another minute, then turn to you. 'Tiberius sends his wishes for your continued health after the death of your grandfather,' says the chief of them, managing somehow not even to smile. 
		
No one alludes to the fact that this good-health salutation came with a thorough destruction of your house and personal belongings.".
	
Book 4 - Epilogue Content

After printing the player's obituary: follow the summation rules.

The summation rules is a rulebook.

A summation rule:
	if Julia is apparently guilty:
		say "This all could have worked out better for [Julia]; inspired by [the random thing which incriminates Julia], Tiberius takes out his wrath on her, and she ends up starving at Rhegium, unable to supply herself with food, for all her arts.".

A summation rule:
	if Germanicus is apparently guilty:
		say "[Germanicus] has an uncomfortable time with the guilt you implied for him with [the random thing which incriminates Germanicus]; the native suspicion of Tiberius, and the popularity of Germanicus with the army, have already made his position less secure; and within a few years he has died under mysterious circumstances.".

A summation rule:
	if Clemens is apparently guilty and Clemens is whole:
		if Clemens protects the player and the player protects Clemens:
			if the player is apparently guilty:
				say "You had some vague hopes that [the random thing which incriminates Clemens] would cause Clemens to be thrown in prison alongside you, in which case you could plan your escape together. But this does not happen, and you have no way of knowing what is happening to him, other than that, since you're alive, he must be as well.";
			otherwise:
				say "[Clemens], despite being innocent in fact, is sentenced to be executed because of [the random thing which incriminates Clemens]: Tiberius decides, unreasonably, that he must be the product of some infidelity on the part of one of your family. (This impression is increased because he looks so very much like you, reverse-linked.) Things only get stranger when they try to execute him but fail. The last you hear, he's relegated to a temple under heavy guard, while Tiberius tries to decide whether he is an evil omen, or a god in disguise, or..."; 
		otherwise:
			say "[Clemens], despite being innocent in fact, is executed because of [the random thing which incriminates Clemens]: Tiberius decides, unreasonably, that he must be the product of some infidelity on the part of your mother, or possibly something even more sinister, and thus bear a dangerous amount of the imperial Art.".
	
To decide whether player croaked:
	(- (deadflag == 1) -);

A summation rule:
	if player croaked, make no decision;
	if the soldiers can see the corpse:
		say "You do get to feeling bad about Clemens, who was wretched company and a drinker, not to mention disobedient and slothful -- but still, the only person you had to talk to hereabouts."

A summation rule:
	if the Phaenomena is ruined:
		say "Your [Phaenomena] is lost to the world, and this is a serious pity -- it was good work, and good scholarship, and there are few with your skill who have any interest in such undertakings now."; 
	if the soldiers can see the Phaenomena and something (called the master) protects the Phaenomena:
		say "As for your [Phaenomena], it is taken back to Rome and published, though under the name of [a random other person mentioned by the master]."; 
	if the Phaenomena is whole and the Phaenomena incriminates the player:
		say "Your [Phaenomena] does survive, and with its proper attribution and the original account you made detailing how it was done. Surely history will remember that about you."

To say start:
	if started printing is 0, say line break;
	now started printing is 1;

The last endgame rule:
	end the story finally saying "You have won";
	rule succeeds; 
	
Some soldiers are a man. "The soldiers are all standing around looking at you in a highly unpleasant manner."

Book 5 - Action Speed
	
Examining something is taking instant action. Thinking is taking instant action. Looking is taking instant action. Listening is taking instant action. Smelling is taking instant action. Tasting is taking instant action. Listing persons is taking instant action. Taking inventory is taking instant action.
 
The take instant actions out of world rule is listed before the every turn stage rule in the turn sequence rules.

This is the take instant actions out of world rule: if taking instant action, rule succeeds. 

Before reading a command while the turn count is 1 and initial message is 0:
	try thinking;
	now initial message is 1.

Initial message is a number that varies.

A thing can be examined or unexamined.

Carry out examining something:
	now the noun is examined. 

Volume 6 - Cosmetics
	
Use the serial comma and American dialect.

Rule for deciding whether all includes scenery: it does not. Rule for deciding whether all includes a fixed in place thing while taking: it does not.

Use full-length room descriptions.

Include Basic Screen Effects by Emily Short. Include Menus by Emily Short. 

Understand "menu" or "credits" as asking for help. Understand "help" or "hint" or "hints" or "about" or "info" as asking for help.

Asking for help is an action out of world.
Carry out asking for help (this is the help request rule):
	now the current menu is the Table of Basic Help Options;
	carry out the displaying activity;
	clear the screen;
	try looking.

Table of Basic Help Options
title	subtable	description	toggle
"Introduction to [story title]"	--	"[bold type][story title][roman type][paragraph break][story description]"	a rule
"Instructions for Playing IF in General"	Table of Instruction Options	--	--

Table of Instruction Options
title	subtable	description	toggle
"About Interactive Fiction"	--	"The game you are playing is a work of Interactive Fiction.  In interactive fiction you play the main character of a story.  You type commands which determine the actions of the character and the flow of the plot.  Some IF games include graphics, but most do not: the imagery is provided courtesy of your imagination.  On the other hand, there's a wide range of action available: whereas in other games you may be restricted to shooting, movement, or searching items you can click on with a mouse, IF allows you a wide range of verbs."	--
"What to do with [command prompt]"	--	"The [command prompt] sign is where the game says, 'Okay, what do you want to do now?'  You may respond by typing an instruction -- usually an imperative verb, possibly followed by prepositions and objects.  So, for instance, LOOK, LOOK AT FISH, TAKE FISH."	--
"Getting Started"	--	"The first thing you want to do when starting a game is acquaint yourself with your surroundings and get a sense of your goal. To this end, you should read the introductory text carefully. Sometimes it contains clues. You will also want to look at the room you are in. Notice where the exits from the room are, and what objects are described here. If any of these seem interesting, you may want to EXAMINE them. [paragraph break]You might also want to examine yourself (EXAMINE ME) to see whether the author has left you any clues about your character. TAKE INVENTORY will tell you what you're carrying, as well.[paragraph break]Once you've gotten your bearings, you may want to explore. Move from room to room, and check out every location available."	--
"Rooms and Travel"	--	"At any given time, you are in a specific location, or room. When you go into a room, the game will print a description of what you can see there. This description will contain two vital kinds of information: things in the room you can interact with or take, and a list of exits, or ways out. If you want to see the description again, you may just type LOOK. [paragraph break]When you want to leave a location and go to another one, you may communicate this to the game using compass directions: eg, GO NORTH. For simplicity's sake, you are allowed to omit the word GO, and to abbreviate the compass directions. So you may use NORTH, SOUTH, EAST, WEST, NORTHEAST, SOUTHEAST, NORTHWEST, SOUTHWEST, UP, and DOWN, or in short form N, S, E, W, NE, SE, NW, SW, U, and D.[paragraph break]In some locations, IN and OUT will also be useful."	--
"Objects"	--	"Throughout the game there will be assorted objects that you can do things with. Most importantly, you may TAKE or GET items, and (when you are tired of them) DROP them again. INVENTORY (abbreviated I) will list the items you are currently holding. [paragraph break]There are usually assorted things you may do with these objects. OPEN, CLOSE, WEAR, EAT, LOCK, and UNLOCK are especially common.[paragraph break]Occasionally, you will find that the game does not recognize the name of an object even though it has been described as being in the room with you. If this is the case, the object is just there for scenery, and you may assume that you do not need to interact with it."	--
"Controlling the Game"	--	"There are a few simple commands for controlling the game itself. These are: [paragraph break]SAVE saves a snapshot of the game as it is now. [line break]RESTORE puts the game back to a previous saved state. You may keep as many saved games as you like. [line break]RESTART puts the game back to the way it was at the beginning. [line break]QUIT ends the game."	--
"How the World is Assembled"	Table of IF Elements	--	--
"If You Get Stuck"	Table of Stuckness Advice	--	--

Table of Stuckness Advice
title	subtable	description	toggle
"Explore"	--	"Examine every object and look at everything in your inventory. Open all the doors you can find, and go through them. Look inside all closed containers. Make sure you've exhausted all the options in your environment. [paragraph break]Try out all your senses. If the game mentions texture, odor, or sound, try touching, smelling, listening to, or tasting objects.[paragraph break]Be thorough. If you still can't figure out what to do, try opening windows, looking under beds, etc. Sometimes objects are well-hidden."
"Read carefully"	--	"Reread. Look back at things you've already looked at. Sometimes this will trigger an idea you hadn't thought of. [paragraph break]Take hints from the prose of the game. Things that are described in great detail are probably more important than things that are given one-liners. Play with those objects. If a machine is described as having component parts, look at the parts, and try manipulating them.  Likewise, notice the verbs that the game itself uses. Try using those yourself. Games often include special verbs -- the names of magic spells, or other special commands. There's no harm in attempting something if the game mentions it.[paragraph break]Check the whole screen. Are there extra windows besides the main window?  What's going on in those?  Check out the status bar, if there is one -- it may contain the name of the room you're in, your score, the time of day, your character's state of health, or some other important information.  If there's something up there, it's worth paying attention to that, too.  When and where does it change?  Why is it significant?  If the bar is describing your character's health, you can bet there is probably a point at which that will be important."
"Be creative"	--	"Rephrase. If there's something you want to do, but the game doesn't seem to understand you, try alternative wordings. [paragraph break]Try variations. Sometimes an action doesn't work, but does produce some kind of unusual result. These are often indications that you're on the right track, even if you haven't figured out quite the right approach yet. Pressing the red button alone may only cause a grinding noise from inside the wall, so perhaps pressing the blue and then the red will open the secret door.[paragraph break]Consider the genre of the game. Mysteries, romances, and thrillers all have their own types of action and motivation. What are you trying to do, and how do conventional characters go about doing that? What's the right sort of behavior for a detective/romance heroine/spy?"
"Cooperate"	--	"Play with someone else. Two heads are often better than one. If that doesn't work, try emailing the author or (better yet) posting a request for hints on the newsgroup rec.games.int-fiction.  For best results, put the name of the game you want help with in the subject line; then leave a page or so of blank spoiler space (so that no one will read about where you got to in the game unless they've already played it), and describe your problem as clearly as possible.  Someone will probably be able to tell you how to get around it."	--

Table of IF Elements
title	subtable	description	toggle
"Space"	--	"Most IF games are set in a world made up of rooms without internal division. Movement between rooms is possible; movement within a room does not always amount to anything. >WALK OVER TO THE DESK is rarely a useful sort of command. On the other hand, if something is described as being high or out of reach, it is sometimes relevant to stand on an object to increase your height. This kind of activity tends to be important only if prompted by the game text."	--
"Containment"	--	"One thing that IF does tend to model thoroughly is containment. Is something in or on something else? The game keeps track of this, and many puzzles have to do with where things are -- in the player's possession, lying on the floor of the room, on a table, in a box, etc."	--
"Types of Action"	--	"Most of the actions you can perform in the world of IF are brief and specific. >WALK WEST or >OPEN DOOR are likely to be provided. >TAKE A JOURNEY or >BUILD A TABLE are not. Things like >GO TO THE HOTEL are on the borderline: some games allow them, but most do not. In general, abstract, multi-stage behavior usually has to be broken down in order for the game to understand it. "	--
"Other Characters"	--	"Other characters in IF games are sometimes rather limited. On the other hand, there are also games in which character interaction is the main point of the game. You should be able to get a feel early on for the characters -- if they seem to respond to a lot of questions, remember what they're told, move around on their own, etc., then they may be fairly important. If they have a lot of stock responses and don't seem to have been the game designer's main concern, then they are most likely present either as local color or to provide the solution to a specific puzzle or set of puzzles. Characters in very puzzle-oriented games often have to be bribed, threatened, or cajoled into doing something that the player cannot do -- giving up a piece of information or an object, reaching something high, allowing the player into a restricted area, and so on."	--

Table of Basic Help Options (continued)
title	subtable	description	toggle
"Special Commands In [story title]"	--	"[story title] has a few special commands not found in every game. These are associated with your character's magical abilities, which he calls the Art.

LINK something TO something causes the two items to be functionally related, so that what happens to one happens to the other. They must resemble one another to some degree before this command will work.

REVERSE LINK something TO something causes two VERY similar items to become even more alike, and in particular makes them both impervious if either item is able to resist damage. A fireproof thing reverse-linked to a not-fireproof thing will make both items invulnerable to flame, for instance.

ENSLAVE something TO something means that whatever happens to the second item (the 'master') will be passed along to the 'slave', without happening to the master item.

You can discover what remains dangerous to you at any time by THINKing[if the old letter is unexamined]. If you aren't quite clear on what your abilities are, and you haven't played any other work in this series, you may want to start by reading the old letter[end if]. And if you forget who's who, typing WHO will list the characters you've thought about recently."	--
"Some General Advice"	--	"Your goal here is to avoid being caught with evidence of your magical abilities: you're logically in line for power but pragmatically not in a position to seize it, and anything that makes you more of a threat to Tiberius (like demonstrated skill in the imperial Art) will simply get you killed.
	
You're also on the clock, so try not to dawdle too much. Thinking, reading or looking at things, taking inventory, etc., are instant actions which cost you nothing; linking and most physical activities are work, though, and will consume a turn each."	--
"About the Real Agrippa Postumus"	--	"Of Marcus Vipsanius Agrippa Postumus, the [italic type]Oxford Classical Dictionary[roman type] has this to say:
	
[italic type]Third son of M. Vipsanius Agrippa and Iulia, born in 12 BC after his father's death, was adopted by Augustus with Tiberius in AD 4, becoming Agrippa Iulius Caesar. He is agreed to have had a fine physique but, perhaps because he fell foul of Augustus, reports of his personality were unfavorable: ferocia is alleged ('intractability' is the mildest translation). In AD 6 Augustus 'abdicated' him, removing him from the Julian family, took over his property, and relegated him to Surrentum; in AD 7 the senate exiled him to Planasia...
	
Attempts to rescue him and put him at the head of a military insurrection are alleged. The story of Augustus visiting him on Planasia is generally rejected. He was killed immediately after the death of Augustus in AD 14, it is not clear on whose instructions. A slave called Clemens impersonated him in 16 and was executed. 

[roman type]Germanicus was, in fact, the author of a Latin translation of the [Phaenomena] of Aratus, along with two comedies in Greek and an assortment of epigrams -- but he, too, died young, and under mysterious circumstances. 

Calling him Germanicus at this date is a bit premature, and is an authorial concession to the fact that he is easier to distinguish from his relatives under that epithet."	--
"Credits"	--	"Inform 7 is the work of Graham Nelson, and [story title] was compiled using Andrew Hunter's compiler for Mac OS X.

Annette Edelman, Admiral Jota, Carl Muckenhoupt, and J. Robinson Wheeler beta-tested. Admiral Jota and Jake Eakle reported flaws in release 3 that were fixed for release 4; Dan Shiovitz and Jeremy Douglass those fixed in release 5."	--
"Contacting the Author"	--	"If you have any difficulties with [story title], feel free to contact me at emshort@mindspring.com."	--  
