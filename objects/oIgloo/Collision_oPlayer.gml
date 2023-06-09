/// @description

if (is_enabled) {
    is_enabled = false;
    
    global.chchpoint_x = x + 25;
    global.chchpoint_y = y;
	
	audio_play_sound(snd_checkpoint, 10, false);
    
    // Delete all other instances of oFlag in the room
    with(oFlag) {
        if (id != other.id) {
            instance_destroy();
        }
    }
    
    // Spawn a new oFlag instance
    instance_create_depth(x + 32.5, y, depth + 1, oFlag);
}
