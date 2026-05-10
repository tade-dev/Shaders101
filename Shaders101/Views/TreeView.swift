//
//  TreeView.swift
//  Shaders101
//
//  Created by BSTAR on 10/05/2026.
//

import SwiftUI

struct TreeView: View {
    var body: some View {
        Image(.tree)
            .resizable()
            .frame(height: 300)
            .scaledToFit()
    }
}

#Preview {
    TreeView()
}
