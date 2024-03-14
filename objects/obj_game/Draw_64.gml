/// @description Show the people their points.
draw_text(10, 10, points);

/*
This was an attempt at a fullscreen system.
It will be replacedd once the main menu goes in.

if keyboard_check_pressed(vk_lcontrol)
{
	var dis_width = display_get_width();
	var dis_height = display_get_height();
    if window_get_fullscreen()
    {
        window_set_fullscreen(false);
		window_set_size(1280, 720)
    }
    else
    {
        window_set_fullscreen(true);
		surface_resize(application_surface, dis_width, dis_height)
    }
}
*/

switch (room)
{
case rm_game:
	if paused == true
	{
		if !surface_exists(paused_surf)
		{
			if paused_surf == -1
			{
				instance_deactivate_all(true);
			}
			paused_surf = surface_create(room_width, room_height);
			surface_set_target(paused_surf);
			draw_surface(application_surface, 0, 0);
			surface_reset_target();
		}
		else
		{
			draw_surface(paused_surf, 0, 0);
			draw_set_alpha(0.5);
			draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
			draw_set_alpha(1);
			draw_set_halign(fa_center);
			draw_text_transformed_colour(room_width / 2, room_height / 2, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
			draw_set_halign(fa_left);
		}
	}
}
