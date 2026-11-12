make_clothes_inst = function(_name, _desc, _pal_ix, _pattern = noone,_unlocked = false) constructor
{
	name = _name
	description = _desc
	pal_ix = _pal_ix
	pattern = _pattern
	unlocked = _unlocked
}

clothes_arr = [	
	new make_clothes_inst("Classic Cook",		"The one and only.",											1,,true),
	new make_clothes_inst("Unfunny Cook",		"Ha.",															3,,global.unfunny),	
	new make_clothes_inst("Money Green",		"Green, like money!",											4,,global.money),	
	new make_clothes_inst("SAGE Blue",			"Nostalgia bait.",												5,,global.sage),	
	new make_clothes_inst("Blood Red",			"Don't worry, it's just stained in pizza sauce.",				6,,global.funny),	
	new make_clothes_inst("Dark Cook",			"For masochists.",												7,,global.dark),	
	new make_clothes_inst("Shitty Cook",		"You smell like shit.",											8,,global.shitty),	
	new make_clothes_inst("Golden God",			"Try P ranking next time!",										9,,global.golden),	
	new make_clothes_inst("Garish Cook",		"Flashy!",														10,,global.garish),	
	new make_clothes_inst("Mooney Orange",		"Donating to the poor, how sweet!",								15,,global.moneyorange),	
	new make_clothes_inst("Funny Polka",		"HAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHA",				11,pat_funny,global.polka),	
	new make_clothes_inst("Itchy Sweater",		"Thanks granny.",												11,pat_itchy,global.itchy),	
	new make_clothes_inst("Pizza Man",			"BECOME THE PIZZA!",											11,pat_pizza,global.pizza),	
	new make_clothes_inst("Bowling Stripes",	"Strike!",														11,pat_stripes,global.bowling),	
	new make_clothes_inst("Goldemanne",			"Ooooh, Shiny!",												11,pat_goldemanne,global.goldemanne),	
	new make_clothes_inst("Bad Bones",			"Good job, you're doing awful.",								11,pat_bones,global.bones),	
	new make_clothes_inst("PP Shirt",			"Register now for 25% off your next order at Peppino Pizza.",	11,pat_pp,global.pp),	
	new make_clothes_inst("War Camo",			"Is he a war veteran? Or is he just crazy?",					11,pat_war,global.war),	
	new make_clothes_inst("John Suit",			"Made from the dead remains of johns.",							11,pat_john,global.john),
	new make_clothes_inst("Candy Wrapper",		"Not tacky at all.",											11,pat_candy,global.candy),
	new make_clothes_inst("Bloodstained",		"Only a little sauce, scary!",									11,pat_bloodstained,global.blood),
	new make_clothes_inst("Autumn",				"That one flannel you wear for Thanksgiving",					11,pat_autumn,global.autumn),
	new make_clothes_inst("Pumpkin",			"I'm going to carve you.",										11,pat_pumpkin,global.pumpkin),
	new make_clothes_inst("Fur",				"Furry!",														11,pat_fur,global.fur),
	new make_clothes_inst("Eyes",				"I see you.",													11,pat_eyes,global.eyes),
]
clothes_selected = 1
depth = 50 //added this so the taunt effect wont go behind the object
alph = 0


