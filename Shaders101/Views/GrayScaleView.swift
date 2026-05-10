//
//  GrayScaleView.swift
//  Shaders101
//
//  Created by BSTAR on 10/05/2026.
//

import SwiftUI

struct GrayScaleView: View {
    var body: some View {
        TreeView()
            .colorEffect(
                ShaderLibrary.grayScale(
                    
                )
            )
    }
}

#Preview {
    GrayScaleView()
}
