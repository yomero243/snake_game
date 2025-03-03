Sure, here's the contents for the file: /opengl-cube/opengl-cube/src/shaders/vertex.glsl

#version 330 core

layout(location = 0) in vec3 position;
layout(location = 1) in vec3 color;

out vec3 fragColor;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
    fragColor = color;
    gl_Position = projection * view * model * vec4(position, 1.0);
}