varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    // Colore originale del pixel
    vec4 texColor = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);

    // Quantità di verde presente nel pixel
    float green = texColor.g;

    // Media di rosso e blu
    // Serve per capire se il verde è davvero dominante
    float redBlue = (texColor.r + texColor.b) * 0.5;

    // Differenza tra il verde e gli altri canali
    float diff = green - redBlue;

    /*
        smoothstep crea una transizione morbida:

        smoothstep(min, max, valore)

        - sotto min  -> 0
        - sopra max -> 1
        - in mezzo  -> transizione graduale

        Questo evita bordi seghettati.
    */

    float mask = smoothstep(0.05, 0.25, diff);

    /*
        Riduciamo l'alpha del pixel:

        - verde forte -> alpha vicino a 0
        - altri colori -> alpha vicino a 1
    */

    texColor.a *= (1.0 - mask);

    // Piccolo cleanup:
    // se l'alpha è quasi invisibile eliminiamo il pixel
    if (texColor.a < 0.01)
    {
        discard;
    }

    // Output finale
    gl_FragColor = texColor;
}