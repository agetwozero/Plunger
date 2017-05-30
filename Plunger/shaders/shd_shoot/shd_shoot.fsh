//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 oc = texture2D( gm_BaseTexture, v_vTexcoord );
 
    vec4 outputColor = vec4(oc.r + .1 ,oc.g + .1 ,oc.b,1.0);
    
    gl_FragColor = outputColor;
}

