return {
	"sphamba/smear-cursor.nvim",
	opts = {
		smear_between_buffers = true,
		smear_between_neighbor_lines = true,
		scroll_buffer_space = true,
		legacy_computing_symbols_support = false,
		smear_insert_mode = true,

		stiffness_insert_mode = 0.5,
		trailing_stiffness_insert_mode = 0.5,
		damping_insert_mode = 0.9,
		trailing_exponent_insert_mode = 1,
		distance_stop_animating_vertical_bar = 0.875,
	},
}
