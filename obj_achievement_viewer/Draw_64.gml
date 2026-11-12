var text

if (alpha > 0)
{
    text = concat(title, "\n", desc)
    draw_set_font(global.creditsfont)
    draw_set_halign(fa_center)
    draw_set_valign(fa_bottom)
    draw_text_color(960 / 2, 540 - 16, text, 16777215, 16777215, 16777215, 16777215, alpha)
}
