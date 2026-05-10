//
//  ContentView.swift
//  Shaders101
//
//  Created by BSTAR on 10/05/2026.
//

import SwiftUI

struct ContentView: View {
    
    @State private var amplitude: Float = 2.0
    
    var body: some View {
        VStack {
            Text("Hello, Metal Shaders!")
                .font(.largeTitle)
                .colorEffect(ShaderLibrary.name1())
            
            Text("Hello, Metal Shaders!")
                .font(.largeTitle)
                .distortionEffect(ShaderLibrary.name2(), maxSampleOffset: .zero)
            
            Text("Hello, Metal Shaders!")
                .font(.largeTitle)
                .layerEffect(ShaderLibrary.name3(), maxSampleOffset: .zero)
            
            Text("Distortion Effect Shader Amplitude Test")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .distortionEffect(ShaderLibrary.SineShader(
                    .float(amplitude)
                ), maxSampleOffset: .zero)
            
            Slider(value: $amplitude, in: -5...5)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
