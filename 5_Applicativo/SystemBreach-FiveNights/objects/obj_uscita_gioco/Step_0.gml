if (keyboard_check_pressed(vk_escape)) {
    show_popup = !show_popup;
    if (show_popup) {
        instance_deactivate_all(true);
        instance_activate_object(id);
    } else {
        instance_activate_all();
    }
}