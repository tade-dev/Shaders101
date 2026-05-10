//
//  GrayScaleShader.metal
//  Shaders101
//
//  Created by BSTAR on 10/05/2026.
//

#include <metal_stdlib>
using namespace metal;


// Color Effect Snippet
// [[ stitchable ]] half4 name1(float2 position, half4 color, args...)
[[ stitchable ]] half4 grayScale(float2 position, half4 color) {
    
//    half w1 = 0.3333;
//    half w2 = 0.3333;
//    half w3 = 0.3333;
    
//    half w1 = 0.299;
//    half w2 = 0.587;
//    half w3 = 0.114;
    
    half w1 = 0.2126;
    half w2 = 0.7152;
    half w3 = 0.7222;
    
    half4 weight = half4(w1, w2, w3, 0);
    
    half brightness = dot(weight, color);
    
//    half brightness = w1*color.r + w2*color.g + w3*color.b;
    return half4(brightness, brightness, 0.2, 1);
    
}
/*
 Text("Color Effect")
 .font(.largeTitle)s
 .colorEffect(ShaderLibrary.name1())
 */
