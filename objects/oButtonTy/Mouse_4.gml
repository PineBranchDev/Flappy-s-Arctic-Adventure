/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if (instance_exists(oControls2)){
	instance_destroy(oControls2);
}

else{
	instance_create_layer(room_width / 2, room_height - 50, "Instances", oControls2);
}
