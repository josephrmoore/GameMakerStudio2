//
// Simple passthrough fragment shader
//

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 Color = texture2D( gm_BaseTexture, v_vTexcoord );
    vec3 lum = vec3(0.299, 0.587, 0.114);
    vec3 overlay = vec3( 0.3, 0.0, 0.4);                                // change this vector for each different color
    float bw = dot( Color.rgb, lum);//black and white result
    gl_FragColor = vec4( bw * overlay, Color.a);
}
