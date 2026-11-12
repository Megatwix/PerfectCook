depth = 50
visible = isvisible
if ispumpkindoor
{
ini_open(global.savestring)
{
sprite_index = (ini_read_real("Halloween","pumpkingot",0 ) < 20 ? spr_pumpkingate2 : spr_pumpkingate)
}
}