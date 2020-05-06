depth = -999999999999;
draw_set_halign(textAlign);
draw_set_font(font);
if (string_length(text)) draw_text_color(x, y, text, c1, c2, c3, c4, alpha);
draw_set_halign(fa_left);
draw_set_font(StandardFont);