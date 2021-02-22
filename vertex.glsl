// requires explict declaration when using RawShaderMaterial, vs ShaderMaterial (implicit)
uniform mat4 modelMatrix; // world space
uniform mat4 viewMatrix; // camera
uniform mat4 projectionMatrix; // perspective, discards coordinates outside of frustrum

// uniform mat4 modelViewMatrix; // substitute for modelMatrix * viewMatrix

attribute vec3 position; // geometry position attribute
attribute vec2 uv;

// passing uv attributes to fragment shader
varying vec2 vUv;

void main() {
    vec4 modelPos = modelMatrix * vec4(position, 1.0);
    vec4 viewPos = viewMatrix * modelPos;
    vec4 projectionPos = projectionMatrix * viewPos;

    vUv = uv;

    // vertex position in screen space
    gl_Position = projectionPos;
}
