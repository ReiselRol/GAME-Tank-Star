var text = "CPU Frames: " + string(fps) + 
		   "\nFPS: " + string(fps_real) +
		   "\nTotal Tanks: " + string(Match_CountTotalTanks())+
		   "\nBot Elo: " + string(Match_elo)
																			  
draw_text_ext_transformed(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), text, 15, 7000, 1, 1, 0)