varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main() {
    vec4 texColor = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
    
    // Definiamo il colore "verde" da rimuovere
    vec3 keyColor = vec3(0.0, 1.0, 0.0); 
    float threshold = 0.5; // Quanto deve essere simile al verde
    
    // Calcoliamo la distanza tra il colore del pixel e il verde
    float diff = distance(texColor.rgb, keyColor);
    
    if (diff < threshold) {
        discard; // Elimina il pixel
    }
    
    gl_FragColor = texColor;
}