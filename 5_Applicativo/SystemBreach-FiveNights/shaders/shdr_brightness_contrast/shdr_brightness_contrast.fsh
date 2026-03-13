varying vec2 v_vTexcoord;

uniform float brightness;
uniform float contrast;

void main()
{
    vec4 color = texture2D(gm_BaseTexture, v_vTexcoord);

    color.rgb += brightness;
    
    float adjustedContrast = clamp(contrast, 0.1, 3.0);
    color.rgb = (color.rgb - 0.5) * adjustedContrast + 0.5;
    
    color.rgb = clamp(color.rgb, 0.0, 1.0);

    gl_FragColor = color;
}