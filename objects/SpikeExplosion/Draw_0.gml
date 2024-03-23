/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

shader_set(BrightnessShader)
shader_set_uniform_f(shader_get_uniform(BrightnessShader, "uni_brightness_amount"), -0.3);
shader_set_uniform_f(shader_get_uniform(BrightnessShader, "uni_contrast_amount"), 1.7);

image_blend = c_white
image_alpha = 1
draw_self()

shader_reset()