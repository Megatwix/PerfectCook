if palette = 12
pattern_draw(sprite_index, image_index, x, y, pattern, 1,1,0,c_white,1)
pal_swap_set(pal_peppino, palette, false)
draw_sprite(sprite_index, image_index, x, y)
shader_reset()
pal_swap_reset()