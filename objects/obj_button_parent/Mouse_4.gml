/// @description Animate button click.

//Play click sound
audio_play_sound(snd_click, 0, false, 1);

//Adjust the position of the button slightly.
y = ystart + 4;

// Timer to return the button to it's normal position.
alarm[0] = 10;