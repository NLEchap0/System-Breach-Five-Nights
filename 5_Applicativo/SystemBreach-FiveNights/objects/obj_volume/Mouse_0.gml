volume = clamp((mouse_x - x) / bar_width, 0, 1);
audio_master_gain(volume);