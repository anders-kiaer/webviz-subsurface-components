// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (C) 2020 - Equinor ASA.

precision highp float;

uniform sampler2D tNormal;
uniform vec2 resolution;
uniform vec3 sunDirection;

void main() {
    vec2 dr = 1.0/resolution;
    vec4 n = texture2D(tNormal, gl_FragCoord.xy/resolution).rgba;
    float light = dot(n.rgb, sunDirection);
    //light = 1.0 * light + 5.0;
    gl_FragColor = vec4(light, light, light, n.a);
}

