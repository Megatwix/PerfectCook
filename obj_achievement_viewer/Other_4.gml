ini_open(global.savestring)
{
if ini_read_real("Achievements",achievement,0)
image_index = 1
else if !ini_read_real("Achievements",achievement,0)
image_index = 0
}
ini_close()// its bullshit ik