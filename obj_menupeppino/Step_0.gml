vspeed += 0.5
if y >= ystart && vspeed >= 0
{
	vspeed = 0
	y = ystart
}
if jumpscarebuffer < 2400 && obj_menuhandler.menu_dark
jumpscarebuffer++
if jumpscarebuffer = 2399
scr_sound(sfx_jumpscare,false)
if jumpscarebuffer >= 2400
{
	sprxscale += 0.2
	spryscale += 0.2
}
if sprxscale >= 5
game_end()