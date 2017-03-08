//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~uniform vec3      vRes;           // viewport resolution (in pixels)
uniform float     vTime;           // shader playback time (in seconds)
uniform vec4      vMouse;                // mouse pixel coords. xy: current (if MLB down), zw: click
uniform int fCount;                

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

// various noise functions
float Hash2d(vec2 uv){
    float f = uv.x + uv.y * 45.0;
    return fract(cos(f*3.333)*103.9);
}
float Hash3d(vec3 uv){
    float f = uv.x + uv.y * 12.0 + uv.z * 13.0;
    return fract(cos(f*3.333)*100003.9);
}
float mixP(float f0, float f1, float a){
    return mix(f0, f1, a*a*(3.0-2.0*a));
}
const vec2 zeroOne = vec2(0.0, 1.0);
float noise2d(vec2 uv){
    vec2 fr = fract(uv.xy);
    vec2 fl = floor(uv.xy);
    float h00 = Hash2d(fl);
    float h10 = Hash2d(fl + zeroOne.yx);
    float h01 = Hash2d(fl + zeroOne);
    float h11 = Hash2d(fl + zeroOne.yy);
    return mixP(mixP(h00, h10, fr.x), mixP(h01, h11, fr.x), fr.y);
}
float noise2dT(vec2 uv){
    vec2 fr = fract(uv);
    vec2 smooth = fr*fr*(3.0-2.0*fr);
    vec2 fl = floor(uv);
    uv = smooth + fl;
    return 0.0; //texture2D(iChannel0, (uv + 0.5)/iChannelResolution[0].xy).y;// use constant here instead?
}
float noise(vec3 uv){
    vec3 fr = fract(uv.xyz);
    vec3 fl = floor(uv.xyz);
    float h000 = Hash3d(fl);
    float h100 = Hash3d(fl + zeroOne.yxx);
    float h010 = Hash3d(fl + zeroOne.xyx);
    float h110 = Hash3d(fl + zeroOne.yyx);
    float h001 = Hash3d(fl + zeroOne.xxy);
    float h101 = Hash3d(fl + zeroOne.yxy);
    float h011 = Hash3d(fl + zeroOne.xyy);
    float h111 = Hash3d(fl + zeroOne.yyy);
    return mixP(
        mixP(mixP(h000, h100, fr.x), mixP(h010, h110, fr.x), fr.y),
        mixP(mixP(h001, h101, fr.x), mixP(h011, h111, fr.x), fr.y)
        , fr.z);
}

float PI=3.14159265;

vec3 saturate(vec3 a){
return clamp(a, 0.0, 1.0);
}
vec2 saturate(vec2 a){
return clamp(a, 0.0, 1.0);
}
float saturate(float a){
return clamp(a, 0.0, 1.0);
}

float Density(vec3 p){
    //float ws = 0.06125*0.125;
    //vec3 warp = vec3(noise(p*ws), noise(p*ws + 111.11), noise(p*ws + 7111.11));
    float final = noise(p*0.06125);// + sin(vTime)*0.5-1.95 + warp.x*4.0;
    float other = noise(p*0.06125 + 1234.567);
    other -= 0.5;
    final -= 0.5;
    final = 0.1/(abs(final*final*other));
    final += 0.5;
    return final*0.0001;
}

void main(void){
     // ---------------- First, set up the camera rays for ray marching ----------------
     vec2 uv = v_vTexcoord.xy * 1.5; ///vRes.xy * 2.0 - 1.0;// - 0.5;

     // Camera up vector.
     vec3 camUp=vec3(0,1,0); // vuv

    // Camera lookat.
    vec3 camLookat=vec3(0,0.0,0);// vrp

    float mx=vMouse.x/vRes.x*PI*2.0 + vTime * 0.0001;
    float my=-vMouse.y/vRes.y*10.0 + sin(vTime * 0.0003)*0.02+0.02*PI/2.01;
    vec3 camPos=vec3(cos(my)*cos(mx),sin(my),cos(my)*sin(mx))*(200.2); // prp

   // Camera setup.
   vec3 camVec=normalize(camLookat - camPos);//vpn
   vec3 sideNorm=normalize(cross(camUp, camVec));// u
   vec3 upNorm=cross(camVec, sideNorm);//v
   vec3 worldFacing=(camPos + camVec);//vcv
   vec3 worldPix = worldFacing + uv.x * sideNorm * (vRes.x/vRes.y) + uv.y * upNorm;//scrCoord
   vec3 relVec = normalize(worldPix - camPos);//scp

   // --------------------------------------------------------------------------------
   float t = 0.0;
   float inc = 0.02;
   float maxDepth = 70.0;
   vec3 pos = vec3(0,0,0);
   float density = 0.0;
   // ray marching time
    for (int i = 0; i < fCount; i++){// This is the count of how many times the ray actually marches
        //if ((t > maxDepth)) break;
        pos = camPos + relVec * t;
        float temp = Density(pos);
        temp *= saturate(t-2.0);

        inc = 1.9 + temp*0.005;// add temp because this makes it look extra crazy!
        density += temp * inc / 15.0;
        t += inc;
    }

   // --------------------------------------------------------------------------------
   // Now that we have done our ray marching, let's put some color on this.
   vec3 finalColor = vec3(0.01,0.1,1.0)* density*0.2;

   // output the final color with sqrt for "gamma correction"
   gl_FragColor = vec4(sqrt(clamp(finalColor, 0.0, 1.0)),1.0);
}
