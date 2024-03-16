if (visibleShader == true && instance_exists(TankSpecting)) {
	draw_set_color(shadowColor)
	draw_set_alpha(shadowOpacity)
	draw_triangle(x ,y ,x +lengthdir_x(shadowLength,point_lt),y +lengthdir_y(shadowLength,point_lt),x + (shadowSize * image_xscale)+lengthdir_x(shadowLength,point_rt),y +lengthdir_y(shadowLength,point_rt),0)
	draw_triangle(x,y ,x + (shadowSize * image_xscale)+lengthdir_x(shadowLength,point_rt),y +lengthdir_y(shadowLength,point_rt),x + (shadowSize * image_xscale),y ,0)
	draw_triangle(x ,y + (shadowSize * image_yscale),x +lengthdir_x(shadowLength,point_ld),y + (shadowSize * image_yscale)+lengthdir_y(shadowLength,point_ld),x + (shadowSize * image_xscale)+lengthdir_x(shadowLength,point_rd),y + (shadowSize * image_yscale)+lengthdir_y(shadowLength,point_rd),0)
	draw_triangle(x ,y + (shadowSize * image_yscale),x + (shadowSize * image_xscale),y + (shadowSize * image_yscale),x + (shadowSize * image_xscale)+lengthdir_x(shadowLength,point_rd),y + (shadowSize * image_yscale)+lengthdir_y(shadowLength,point_rd),0)
	draw_triangle(x ,y + (shadowSize * image_yscale),x ,y ,x +lengthdir_x(shadowLength,point_lt),y +lengthdir_y(shadowLength,point_lt),0)
	draw_triangle(x ,y + (shadowSize * image_yscale),x +lengthdir_x(shadowLength,point_ld),y + (shadowSize * image_yscale)+lengthdir_y(shadowLength,point_ld),x +lengthdir_x(shadowLength,point_lt),y +lengthdir_y(shadowLength,point_lt),0)
	draw_triangle(x + (shadowSize * image_xscale),y + (shadowSize * image_yscale),x + (shadowSize * image_xscale),y ,x + (shadowSize * image_xscale)+lengthdir_x(shadowLength,point_rd),y + (shadowSize * image_yscale)+lengthdir_y(shadowLength,point_rd),0)
	draw_triangle(x + (shadowSize * image_xscale),y ,x + (shadowSize * image_xscale)+lengthdir_x(shadowLength,point_rt),y +lengthdir_y(shadowLength,point_rt),x + (shadowSize * image_xscale)+lengthdir_x(shadowLength,point_rd),y + (shadowSize * image_yscale)+lengthdir_y(shadowLength,point_rd),0)
	draw_set_color(c_white)
	draw_set_alpha(1)
}