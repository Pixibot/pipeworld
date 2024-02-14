#macro RUN_ANIM_START 1
#macro RUN_ANIM_LENGTH 3
#macro ANIM_SPEED 1/7


if (on_ground) {
	if (input_dir != 0) { //change thise
		anim_frame = (anim_frame + ANIM_SPEED) % RUN_ANIM_LENGTH;
		spr_frame = RUN_ANIM_START + anim_frame;
		if (spr_frame > 3) {
			spr_frame = 3;
		}
	} else {
		spr_frame = 0;
	}


	if (input_dir > 0) {
		img_xscale = 1;
	} else if (input_dir < 0) {
		img_xscale = -1;
	} 
}

draw_sprite_ext(
	sprite_index,
	spr_frame,
	floor(x),
	floor(y),
	img_xscale,
	image_yscale,
	image_angle,
	image_blend,
	image_alpha
);

//show_debug_message("draw " +string(x));