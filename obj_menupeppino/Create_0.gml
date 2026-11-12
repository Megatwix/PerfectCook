depth = 0
image_speed = 0.35
cur_selected = 1
jumpscarebuffer = 0
spryscale = 1
sprxscale = 1 //trust me with this one
cur_anim_num = 1
p_ix = 1
p_spr = noone
menu_dark = true
painless = false
var layer_id = layer_get_id("Background")
var backgroundID = layer_background_get_id(layer_id)
if global.halloween
layer_background_index(backgroundID,1)//had to do this because lav made the main menu bg a fucking layer :sb: