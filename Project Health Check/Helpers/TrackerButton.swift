//
//  TrackerButton.swift
//  Project Health Check
//
//  Created by Jim Ciaston on 1/11/24.
//

import SwiftUI

struct TrackerButton: View {
    let action: () -> Void
    let title: String

    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.white)
                 // needs frame .infinity to make id wider
                .frame(maxWidth: .infinity)
                .padding([.top, .bottom], 8)
    }
        .background(Color.indigo)
        .cornerRadius(16)
        .padding([.leading, .trailing], 32)
    }
}

