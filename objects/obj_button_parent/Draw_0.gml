/// @description Draw buttons.
draw_self();

// Set font to use.
draw_set_font(fnt_menu);

// Set text alignment.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw button text variable.
// Draws relative to button position with x and y variables.
draw_text(x, y, button_text);

//Reset text alignment to default value.
draw_set_halign(fa_left);
draw_set_valign(fa_top);