if !instance_exists(obj_achievement_pause) //it will make them not visible if the object dont exists
{
image_alpha = 0
exit
}
else
{
	
ini_open(global.savestring)
{
if ini_read_real("Achievements",achievement,0)
unlocked = 1
else if !ini_read_real("Achievements",achievement,0)
unlocked = 0
}
ini_close()
depth = obj_achievement_pause.depth - 1 //just in case
if unlocked
image_index = 1
else
image_index = 0 //the achievements sprites need to be separated also if im lazy you will need to code the unlock system sorry

if input_check_pressed(INPUTS.left) && selected != 0 // you can change that number to the min achievement you have
selected--
else if input_check_pressed(INPUTS.right)  && selected != 3 // you can change that number to the max achievement you have
selected++

if input_check_pressed(INPUTS.up)
selected = 0

if input_check_pressed(INPUTS.down) && selected = 0
selected = 1

if selected = achievement_number
image_alpha = myalpha //toby fox type of shit (its 1)
else if selected != achievement_number
image_alpha = otheralpha //toby fox type of shit (its 0.5)

if selected = 0
{
	title = ""
	desc = ""
}//make the text empty when nothing is selected





if global.level_data.level_name = "Entrance" //i could maybe do it as a script but im lazy as fuck tbh
{
	if selected = 1
	{
		title = "John Gutted"
		desc = "Destroy all the dead john blocks in John Gutter"
	}
	else if selected = 2
	{
		title = "Lets Make This Quick"
		desc = "Finish John Gutter in under two minutes"
	}
	else if selected = 3
	{
		title ="Primate Rage"
		desc = "Get a combo of 86 or more in John Gutter"
	}
}


if global.level_data.level_name = "Test"
{
	if selected = 1
	{
		title = "Placing my holder."
		desc = "Twin 4."
	}
	else if selected = 2
	{
		title = "Placing my holder."
		desc = "Twin 5."
	}
	else if selected = 3
	{
		title = "Placing my holder."
		desc = "Twin 6."
	}
}
}