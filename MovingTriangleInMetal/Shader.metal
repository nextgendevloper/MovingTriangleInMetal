//
//  Shader.metal
//  MovingTriangleInMetal
//
//  Created by HKBeast on 02/02/23.
//

#include <metal_stdlib>
using namespace metal;

struct VertexIn {
    float2 position [[attribute(0)]];
    float4 color    [[attribute(1)]];
};

struct VertexOut {
    float4 position [[position]];
    float4 color;
};

vertex VertexOut vertex_main(VertexIn in [[stage_in]],
                             constant float2 &positionOffset [[buffer(1)]])
{
    VertexOut out;
    out.position = float4(in.position + positionOffset, 0.0, 1.0);
    out.color = in.color;
    return out;
}

fragment float4 fragment_main(VertexOut in [[stage_in]]) {
    return in.color;
}
