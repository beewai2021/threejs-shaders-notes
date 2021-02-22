// requires explict declaration when using RawShaderMaterial, vs ShaderMaterial (implicit)
precision mediump float; // float decimals precision, mediump (most optimized, least bugs)

varying vec2 vUv; // retrieving uv from vertex shader

void main() {
    vec4 color = vec4(vUv, 1.0, 1.0); // (r,g,b,a)

    // color of visible fragment
    gl_FragColor = color;
}
