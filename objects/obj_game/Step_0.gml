//Powerup spawn timer.
powerup_time -= delta_time/1000000;

//Pause system.
if room == rm_game
{
if keyboard_check_pressed(vk_escape)
    {
    paused = !paused;
    if paused == false
        {
        instance_activate_all();
        surface_free(paused_surf);
                paused_surf = -1;
        }
    }
if paused == true
    {
    alarm[0]++;
    }
}