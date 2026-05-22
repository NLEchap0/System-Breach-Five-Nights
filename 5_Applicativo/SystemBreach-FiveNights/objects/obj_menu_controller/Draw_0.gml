try {
    var result = video_draw()
    var status = result[0]
    if (status == 0) {
        var surf = result[1];
        draw_surface_stretched(surf, 0, 0, room_width, room_height);
    }
} catch (_) {}