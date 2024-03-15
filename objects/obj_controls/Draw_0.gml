/// @description Help menu.
// Set text alignment.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Display controls.
draw_text(x, y, "Move with arrow keys.\nShoot with spacebar.");

// Reset text alignment.
draw_set_halign(fa_left);
draw_set_valign(fa_top);