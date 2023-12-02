#version 310 es
precision mediump float;
layout (location = 0) out vec4 o_Color;

uniform vec4 u_Color;

void main()
{
	o_Color = u_Color;
}
