/// @description Drawing Shadow Casting
//draw_self()/*
if (visibleShader == true && instance_exists(TankSpecting) && isVisible == true) {
	draw_set_color(shadowColor)
	draw_set_alpha(shadowOpacity)
	draw_triangle(x ,y ,x +lengthdir_x(shadowLength,point_lt),y +lengthdir_y(shadowLength,point_lt),x + (32 * image_xscale)+lengthdir_x(shadowLength,point_rt),y +lengthdir_y(shadowLength,point_rt),0)
	draw_triangle(x,y ,x + (32 * image_xscale)+lengthdir_x(shadowLength,point_rt),y +lengthdir_y(shadowLength,point_rt),x + (32 * image_xscale),y ,0)
	draw_triangle(x ,y + (32 * image_yscale),x +lengthdir_x(shadowLength,point_ld),y + (32 * image_yscale)+lengthdir_y(shadowLength,point_ld),x + (32 * image_xscale)+lengthdir_x(shadowLength,point_rd),y + (32 * image_yscale)+lengthdir_y(shadowLength,point_rd),0)
	draw_triangle(x ,y + (32 * image_yscale),x + (32 * image_xscale),y + (32 * image_yscale),x + (32 * image_xscale)+lengthdir_x(shadowLength,point_rd),y + (32 * image_yscale)+lengthdir_y(shadowLength,point_rd),0)
	draw_triangle(x ,y + (32 * image_yscale),x ,y ,x +lengthdir_x(shadowLength,point_lt),y +lengthdir_y(shadowLength,point_lt),0)
	draw_triangle(x ,y + (32 * image_yscale),x +lengthdir_x(shadowLength,point_ld),y + (32 * image_yscale)+lengthdir_y(shadowLength,point_ld),x +lengthdir_x(shadowLength,point_lt),y +lengthdir_y(shadowLength,point_lt),0)
	draw_triangle(x + (32 * image_xscale),y + (32 * image_yscale),x + (32 * image_xscale),y ,x + (32 * image_xscale)+lengthdir_x(shadowLength,point_rd),y + (32 * image_yscale)+lengthdir_y(shadowLength,point_rd),0)
	draw_triangle(x + (32 * image_xscale),y ,x + (32 * image_xscale)+lengthdir_x(shadowLength,point_rt),y +lengthdir_y(shadowLength,point_rt),x + (32 * image_xscale)+lengthdir_x(shadowLength,point_rd),y + (32 * image_yscale)+lengthdir_y(shadowLength,point_rd),0)
	draw_set_color(c_white)
	draw_set_alpha(1)
}