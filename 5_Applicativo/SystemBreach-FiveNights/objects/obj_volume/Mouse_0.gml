volume = clamp((mouse_x - x+7) / bar_width, 0, 1);
audio_master_gain(volume);
global.volume = volume


salvare_gioco_json_base64()