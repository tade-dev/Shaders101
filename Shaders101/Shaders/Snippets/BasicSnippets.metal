//
//  BasicSnippets.metal
//  Shaders101
//
//  Created by BSTAR on 10/05/2026.
//

#include <metal_stdlib>
#include <SwiftUI/SwiftUI_Metal.h>
using namespace metal;

// Color Effect Snippet
// [[ stitchable ]] half4 name1(float2 position, half4 color, args...)
[[ stitchable ]] half4 name1(float2 position, half4 color) {
    half4 result = color.a == 0 ? half4(1,0,0,1) : color;
    return result;
}
/*
 Text("Color Effect")
 .font(.largeTitle)
 .colorEffect(ShaderLibrary.name1())
 */


// Distortion Effect Snippet
// [[ stitchable ]] float2 name2(float2 position, args...)
[[ stitchable ]] float2 name2(float2 position) {
    float2 result = float2(position.x, position.y+3*sin(position.x));
    return result;
}
/*
 Text("Distortion Effect")
 .font(.largeTitle)
 .distortionEffect(ShaderLibrary.name2(), maxSampleOffset: .zero)
 */


// Layer Effect Snippet
// [[ stitchable ]] half4 name3(float2 position, SwiftUI::Layer layer, args...)
[[ stitchable ]] half4 name3(float2 position, SwiftUI::Layer layer) {
    return half4(0,0,1,1);
}
/*
 Text("Layer Effect")
 .font(.largeTitle)
 .layerEffect(ShaderLibrary.name3(), maxSampleOffset: .zero)
 */

// Distortion Effect Snippet
// [[ stitchable ]] float2 name2(float2 position, args...)
[[ stitchable ]] float2 SineShader(float2 position, float amplitude) {
    float2 result = float2(position.x, position.y + amplitude * sin(position.x));
    return result;
}
/*
 Text("Distortion Effect")
 .font(.largeTitle)
 .distortionEffect(ShaderLibrary.name2(), maxSampleOffset: .zero)
 */
