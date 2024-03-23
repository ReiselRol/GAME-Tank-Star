//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 sampledColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	sampledColor.rgb = vec3(1.0) - sampledColor.rgb;
	gl_FragColor = sampledColor;
}

/*
	shader_set_uniform_f(shader_get_uniform(LedEffect, "uni_resolution"), surface_get_width(application_surface), surface_get_height(application_surface));
	shader_set_uniform_f(shader_get_uniform(LedEffect, "uni_led_size"), 1000000.0);
	shader_set_uniform_f(shader_get_uniform(LedEffect, "uni_led_brightness"), 0.025);
*/
