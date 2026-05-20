varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    // Colore originale del pixel
    vec4 texColor = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);

    // Quantità di verde
    float green = texColor.g;

    // Media rosso/blu
    float redBlue = (texColor.r + texColor.b) * 0.5;

    // Quanto il verde domina
    float diff = green - redBlue;

    /*
        Versione MOLTO più conservativa.

        - 0.25 -> inizia a togliere verde
        - 0.55 -> verde quasi puro

        Questo evita che il soggetto sparisca.
    */

    float alpha = 1.0 - smoothstep(0.25, 0.55, diff);

    // Applica alpha
    texColor.a *= alpha;

    // Elimina solo pixel quasi invisibili
    if(texColor.a < 0.02)
    {
        discard;
    }

    gl_FragColor = texColor;
}