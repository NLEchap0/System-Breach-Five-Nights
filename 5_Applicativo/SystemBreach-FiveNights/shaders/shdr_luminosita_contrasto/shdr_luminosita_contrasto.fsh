varying vec2 v_vTexcoord;

uniform float brightness;
uniform float contrast;
uniform float saturation;

void main()
{
    vec4 color = texture2D(gm_BaseTexture, v_vTexcoord);

    // brightness
    color.rgb += brightness;

    // contrast
    float adjustedContrast = clamp(contrast, 0.1, 3.0);
    color.rgb = (color.rgb - 0.5) * adjustedContrast + 0.5;

    // saturation
    float gray = dot(color.rgb, vec3(0.299, 0.587, 0.114));
    vec3 grayscale = vec3(gray);
    color.rgb = mix(grayscale, color.rgb, saturation);

	// clamp finale
    color.rgb = clamp(color.rgb, 0.0, 1.0);

    gl_FragColor = color;
}